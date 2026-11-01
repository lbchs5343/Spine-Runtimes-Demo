.class public Lcom/google/android/gms/internal/ads/ah;
.super Lcom/google/android/gms/internal/ads/zzgxp;
.source "SourceFile"


# instance fields
.field protected final zza:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgxp;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ah;->zza:[B

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ah;II)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ah;->zzd()I

    move-result v0

    if-gt p3, v0, :cond_3

    add-int v0, p2, p3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ah;->zzd()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ah;->zza:[B

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/ah;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ah;->b()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ah;->b()I

    move-result p3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ah;->b()I

    move-result p1

    add-int/2addr p1, p2

    :goto_0
    if-ge p3, v2, :cond_1

    aget-byte p2, v0, p3

    aget-byte v3, v1, p1

    if-eq p2, v3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ah;->zzd()I

    move-result p1

    const-string v1, "Ran off end of other: "

    const-string v2, ", "

    invoke-static {p2, p3, v1, v2, v2}, Lg/awf;->z(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ah;->zzd()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Length too large: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgxp;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ah;->zzd()I

    move-result v0

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v2

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ah;->zzd()I

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ah;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/ads/ah;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->q()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->q()I

    move-result v2

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    if-eq v0, v2, :cond_4

    :goto_1
    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ah;->zzd()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ah;->a(Lcom/google/android/gms/internal/ads/ah;II)Z

    move-result p1

    return p1

    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f(III)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ah;->b()I

    move-result v0

    add-int/2addr v0, p2

    add-int/2addr p3, v0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ah;->zza:[B

    sget-object v1, Lg/bso;->a:Lg/bli;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, v0, p3}, Lg/bli;->r(I[BII)I

    move-result p1

    return p1
.end method

.method public final g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h(I)B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ah;->zza:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ah;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ah;->b()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ah;->zzd()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final k(Lcom/google/android/gms/internal/ads/zzgyc;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ah;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ah;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ah;->zzd()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgyc;->zza([BII)V

    return-void
.end method

.method public l(I[BII)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ah;->zza:[B

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final m(III)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ah;->b()I

    move-result v0

    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ah;->zza:[B

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    move v1, v0

    :goto_0
    add-int v2, v0, p3

    if-ge v1, v2, :cond_0

    mul-int/lit8 p1, p1, 0x1f

    aget-byte v2, p2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public zza(I)B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ah;->zza:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public zzd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ah;->zza:[B

    array-length v0, v0

    return v0
.end method

.method public final zzk(II)Lcom/google/android/gms/internal/ads/zzgxp;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ah;->zzd()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgxp;->n(III)I

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgxp;->zzb:Lcom/google/android/gms/internal/ads/zzgxp;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ah;->zza:[B

    new-instance v1, Lg/eer;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ah;->b()I

    move-result v2

    add-int/2addr v2, p1

    invoke-direct {v1, v0, v2, p2}, Lg/eer;-><init>([BII)V

    return-object v1
.end method

.method public final zzl()Lcom/google/android/gms/internal/ads/zzgxv;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ah;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ah;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ah;->zzd()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzgxv;->c(I[BI)Lg/aez;

    move-result-object v0

    return-object v0
.end method

.method public final zzn()Ljava/nio/ByteBuffer;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ah;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ah;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ah;->zzd()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final zzp()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ah;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ah;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ah;->zza:[B

    sget-object v3, Lg/bso;->a:Lg/bli;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v3, v2, v0, v1}, Lg/bli;->r(I[BII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v3
.end method

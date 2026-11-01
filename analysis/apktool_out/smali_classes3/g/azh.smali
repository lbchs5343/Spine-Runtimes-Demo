.class public Lg/azh;
.super Lcom/google/android/gms/internal/ads/zzgcb;
.source "SourceFile"


# instance fields
.field public volatile h:Lcom/google/android/gms/internal/ads/zzgcb;

.field public final i:Lg/esw;

.field public final j:Ljava/lang/Character;


# direct methods
.method public constructor <init>(Lg/esw;Ljava/lang/Character;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/azh;->i:Lg/esw;

    if-eqz p2, :cond_1

    iget-object p1, p1, Lg/esw;->i:[B

    array-length v0, p1

    const/16 v1, 0x3d

    if-le v0, v1, :cond_1

    aget-byte p1, p1, v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "Padding character %s was already in alphabet"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzfxf;->zzb(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lg/azh;->j:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x3d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v1, Lg/esw;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lg/esw;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v1, v0}, Lg/azh;-><init>(Lg/esw;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method public final b(I)I
    .locals 3

    iget-object v0, p0, Lg/azh;->i:Lg/esw;

    iget v1, v0, Lg/esw;->e:I

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgck;->zzb(IILjava/math/RoundingMode;)I

    move-result p1

    iget v0, v0, Lg/esw;->c:I

    mul-int v0, v0, p1

    return v0
.end method

.method public final c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lg/azh;->j:Ljava/lang/Character;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public d([BLjava/lang/CharSequence;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lg/azh;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, v0, Lg/azh;->i:Lg/esw;

    iget v4, v3, Lg/esw;->c:I

    iget v5, v3, Lg/esw;->c:I

    iget-object v6, v3, Lg/esw;->a:[Z

    rem-int/2addr v2, v4

    aget-boolean v2, v6, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v4, v7, :cond_3

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    iget v11, v3, Lg/esw;->b:I

    if-ge v9, v5, :cond_1

    shl-long/2addr v7, v11

    add-int v11, v4, v9

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-ge v11, v12, :cond_0

    add-int/lit8 v11, v10, 0x1

    add-int/2addr v10, v4

    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual {v3, v10}, Lg/esw;->j(C)I

    move-result v10

    int-to-long v12, v10

    or-long/2addr v7, v12

    move v10, v11

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    iget v9, v3, Lg/esw;->e:I

    mul-int v10, v10, v11

    add-int/lit8 v11, v9, -0x1

    mul-int/lit8 v11, v11, 0x8

    :goto_2
    mul-int/lit8 v12, v9, 0x8

    sub-int/2addr v12, v10

    if-lt v11, v12, :cond_2

    add-int/lit8 v12, v6, 0x1

    ushr-long v13, v7, v11

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    long-to-int v14, v13

    int-to-byte v13, v14

    aput-byte v13, p1, v6

    add-int/lit8 v11, v11, -0x8

    move v6, v12

    goto :goto_2

    :cond_2
    add-int/2addr v4, v5

    goto :goto_0

    :cond_3
    return v6

    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgbz;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string v3, "Invalid input length "

    invoke-static {v1, v3}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public e(Ljava/lang/StringBuilder;[BI)V
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {v1, p3, v0}, Lcom/google/android/gms/internal/ads/zzfwq;->zzj(III)V

    :goto_0
    if-ge v1, p3, :cond_0

    iget-object v0, p0, Lg/azh;->i:Lg/esw;

    iget v2, v0, Lg/esw;->e:I

    sub-int v3, p3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, p1, p2, v1, v2}, Lg/azh;->k(Ljava/lang/StringBuilder;[BII)V

    iget v0, v0, Lg/esw;->e:I

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lg/azh;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lg/azh;

    iget-object v0, p0, Lg/azh;->i:Lg/esw;

    iget-object v2, p1, Lg/azh;->i:Lg/esw;

    invoke-virtual {v0, v2}, Lg/esw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/azh;->j:Ljava/lang/Character;

    iget-object p1, p1, Lg/azh;->j:Ljava/lang/Character;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final f(I)I
    .locals 4

    iget-object v0, p0, Lg/azh;->i:Lg/esw;

    iget v0, v0, Lg/esw;->b:I

    int-to-long v0, v0

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public g(Lg/esw;Ljava/lang/Character;)Lcom/google/android/gms/internal/ads/zzgcb;
    .locals 1

    new-instance v0, Lg/azh;

    invoke-direct {v0, p1, p2}, Lg/azh;-><init>(Lg/esw;Ljava/lang/Character;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lg/azh;->i:Lg/esw;

    invoke-virtual {v0}, Lg/esw;->hashCode()I

    move-result v0

    iget-object v1, p0, Lg/azh;->j:Ljava/lang/Character;

    invoke-static {v1}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final k(Ljava/lang/StringBuilder;[BII)V
    .locals 9

    add-int v0, p3, p4

    array-length v1, p2

    invoke-static {p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzfwq;->zzj(III)V

    iget-object v0, p0, Lg/azh;->i:Lg/esw;

    iget v1, v0, Lg/esw;->e:I

    iget v2, v0, Lg/esw;->b:I

    const/4 v3, 0x0

    if-gt p4, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfwq;->zze(Z)V

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    :goto_1
    const/16 v6, 0x8

    if-ge v1, p4, :cond_1

    add-int v7, p3, v1

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long/2addr v4, v7

    shl-long/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p4, 0x1

    mul-int/lit8 p2, p2, 0x8

    :goto_2
    mul-int/lit8 p3, p4, 0x8

    if-ge v3, p3, :cond_2

    sub-int p3, p2, v2

    sub-int/2addr p3, v3

    ushr-long v7, v4, p3

    long-to-int p3, v7

    iget v1, v0, Lg/esw;->h:I

    and-int/2addr p3, v1

    iget-object v1, v0, Lg/esw;->g:[C

    aget-char p3, v1, p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    add-int/2addr v3, v2

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lg/azh;->j:Ljava/lang/Character;

    if-eqz p2, :cond_3

    :goto_3
    iget p2, v0, Lg/esw;->e:I

    mul-int/lit8 p2, p2, 0x8

    if-ge v3, p2, :cond_3

    const/16 p2, 0x3d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    add-int/2addr v3, v2

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/azh;->i:Lg/esw;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    iget v1, v1, Lg/esw;->b:I

    rem-int/2addr v2, v1

    if-eqz v2, :cond_1

    iget-object v1, p0, Lg/azh;->j:Ljava/lang/Character;

    if-nez v1, :cond_0

    const-string v1, ".omitPadding()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v2, ".withPadChar(\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzgcb;
    .locals 13

    iget-object v0, p0, Lg/azh;->h:Lcom/google/android/gms/internal/ads/zzgcb;

    if-nez v0, :cond_c

    iget-object v0, p0, Lg/azh;->i:Lg/esw;

    iget-object v1, v0, Lg/esw;->g:[C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_9

    aget-char v4, v1, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfwa;->zze(C)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v3, 0x0

    :goto_1
    array-length v4, v1

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    aget-char v4, v1, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfwa;->zzd(C)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_2
    xor-int/2addr v3, v5

    const-string v4, "Cannot call lowerCase() on a mixed-case alphabet"

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzfwq;->zzl(ZLjava/lang/Object;)V

    array-length v3, v1

    new-array v3, v3, [C

    const/4 v4, 0x0

    :goto_3
    array-length v6, v1

    if-ge v4, v6, :cond_3

    aget-char v6, v1, v4

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzfwa;->zze(C)Z

    move-result v7

    if-eqz v7, :cond_2

    xor-int/lit8 v6, v6, 0x20

    :cond_2
    int-to-char v6, v6

    aput-char v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    iget-object v1, v0, Lg/esw;->d:Ljava/lang/String;

    new-instance v4, Lg/esw;

    const-string v6, ".lowerCase()"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v3}, Lg/esw;-><init>(Ljava/lang/String;[C)V

    iget-object v1, v4, Lg/esw;->i:[B

    iget-boolean v3, v0, Lg/esw;->f:Z

    if-eqz v3, :cond_a

    iget-boolean v3, v4, Lg/esw;->f:Z

    if-eqz v3, :cond_4

    goto :goto_6

    :cond_4
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    const/16 v6, 0x41

    :goto_4
    const/16 v7, 0x5a

    if-gt v6, v7, :cond_7

    or-int/lit8 v7, v6, 0x20

    aget-byte v8, v1, v6

    aget-byte v9, v1, v7

    const/4 v10, -0x1

    if-ne v8, v10, :cond_5

    aput-byte v9, v3, v6

    goto :goto_5

    :cond_5
    int-to-char v11, v6

    int-to-char v12, v7

    if-ne v9, v10, :cond_6

    aput-byte v8, v3, v7

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    aput-object v3, v4, v5

    const-string v1, "Can\'t ignoreCase() since \'%s\' and \'%s\' encode different values"

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzfxf;->zzb(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v1, v4, Lg/esw;->d:Ljava/lang/String;

    iget-object v2, v4, Lg/esw;->g:[C

    new-instance v4, Lg/esw;

    const-string v6, ".ignoreCase()"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v2, v3, v5}, Lg/esw;-><init>(Ljava/lang/String;[C[BZ)V

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    move-object v4, v0

    :cond_a
    :goto_6
    if-ne v4, v0, :cond_b

    move-object v0, p0

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lg/azh;->j:Ljava/lang/Character;

    invoke-virtual {p0, v4, v0}, Lg/azh;->g(Lg/esw;Ljava/lang/Character;)Lcom/google/android/gms/internal/ads/zzgcb;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lg/azh;->h:Lcom/google/android/gms/internal/ads/zzgcb;

    :cond_c
    return-object v0
.end method

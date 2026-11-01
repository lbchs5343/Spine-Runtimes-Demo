.class public final Lcom/google/android/gms/internal/ads/zzwj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Random;

.field public final b:[I

.field public final c:[I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwj;-><init>(Ljava/util/Random;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzwj;-><init>([ILjava/util/Random;)V

    return-void
.end method

.method public constructor <init>([ILjava/util/Random;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->b:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwj;->a:Ljava/util/Random;

    array-length p2, p1

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwj;->c:[I

    const/4 p2, 0x0

    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->c:[I

    aget v1, p1, p2

    aput p2, v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->b:[I

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzb()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->b:[I

    array-length v1, v0

    const/4 v2, -0x1

    if-lez v1, :cond_0

    add-int/2addr v1, v2

    aget v0, v0, v1

    return v0

    :cond_0
    return v2
.end method

.method public final zzc()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->b:[I

    array-length v0, v0

    return v0
.end method

.method public final zzd(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->c:[I

    aget p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->b:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget p1, v0, p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final zze(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->c:[I

    aget p1, v0, p1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->b:[I

    aget p1, v0, p1

    return p1

    :cond_0
    return v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzwj;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwj;

    new-instance v1, Ljava/util/Random;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwj;->a:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzwj;-><init>(Ljava/util/Random;)V

    return-object v0
.end method

.method public final zzg(II)Lcom/google/android/gms/internal/ads/zzwj;
    .locals 8

    new-array p1, p2, [I

    new-array v0, p2, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->b:[I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwj;->a:Ljava/util/Random;

    if-ge v2, p2, :cond_0

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aput v3, p1, v2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget v5, v0, v4

    aput v5, v0, v2

    aput v2, v0, v4

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    array-length v2, v3

    add-int/2addr v2, p2

    new-array v2, v2, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    array-length v7, v3

    add-int/2addr v7, p2

    if-ge v1, v7, :cond_3

    if-ge v5, p2, :cond_1

    aget v7, p1, v5

    if-ne v6, v7, :cond_1

    add-int/lit8 v7, v5, 0x1

    aget v5, v0, v5

    aput v5, v2, v1

    move v5, v7

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v6, 0x1

    aget v6, v3, v6

    aput v6, v2, v1

    if-ltz v6, :cond_2

    add-int/2addr v6, p2

    aput v6, v2, v1

    :cond_2
    move v6, v7

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzwj;

    new-instance p2, Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p1, v2, p2}, Lcom/google/android/gms/internal/ads/zzwj;-><init>([ILjava/util/Random;)V

    return-object p1
.end method

.method public final zzh(II)Lcom/google/android/gms/internal/ads/zzwj;
    .locals 5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->b:[I

    array-length v0, p1

    sub-int/2addr v0, p2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    aget v3, p1, v1

    if-ltz v3, :cond_0

    if-ge v3, p2, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    sub-int v4, v1, v2

    if-ltz v3, :cond_1

    sub-int/2addr v3, p2

    :cond_1
    aput v3, v0, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzwj;

    new-instance p2, Ljava/util/Random;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->a:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzwj;-><init>([ILjava/util/Random;)V

    return-object p1
.end method

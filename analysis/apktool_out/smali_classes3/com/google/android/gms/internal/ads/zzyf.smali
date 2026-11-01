.class public final Lcom/google/android/gms/internal/ads/zzyf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[[[I

.field public final b:Lcom/google/android/gms/internal/ads/zzwr;

.field public final c:[I

.field public final d:[Lcom/google/android/gms/internal/ads/zzwr;

.field public final e:[I


# direct methods
.method public constructor <init>([I[Lcom/google/android/gms/internal/ads/zzwr;[I[[[ILcom/google/android/gms/internal/ads/zzwr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyf;->c:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyf;->d:[Lcom/google/android/gms/internal/ads/zzwr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzyf;->a:[[[I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzyf;->e:[I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzyf;->b:Lcom/google/android/gms/internal/ads/zzwr;

    return-void
.end method


# virtual methods
.method public final zza(IIZ)I
    .locals 9

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzyf;->d:[Lcom/google/android/gms/internal/ads/zzwr;

    aget-object v0, p3, p1

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzwr;->zzb(I)Lcom/google/android/gms/internal/ads/zzbw;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbw;->zza:I

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzyf;->a:[[[I

    if-ge v3, v0, :cond_1

    aget-object v5, v5, p1

    aget-object v5, v5, p2

    aget v5, v5, v3

    and-int/lit8 v5, v5, 0x7

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    add-int/lit8 v5, v4, 0x1

    aput v3, v1, v4

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const/4 v1, 0x0

    const/16 v3, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x10

    :goto_1
    array-length v7, v0

    if-ge v2, v7, :cond_3

    aget v7, v0, v2

    aget-object v8, p3, p1

    invoke-virtual {v8, p2}, Lcom/google/android/gms/internal/ads/zzwr;->zzb(I)Lcom/google/android/gms/internal/ads/zzbw;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbw;->zzb(I)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    add-int/lit8 v8, v4, 0x1

    if-nez v4, :cond_2

    move-object v1, v7

    goto :goto_2

    :cond_2
    invoke-static {v1, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    or-int/2addr v3, v4

    :goto_2
    aget-object v4, v5, p1

    aget-object v4, v4, p2

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x18

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v2, v2, 0x1

    move v4, v8

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzyf;->e:[I

    aget p1, p2, p1

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_4
    return v6
.end method

.method public final zzb(III)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyf;->a:[[[I

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    aget p1, p1, p3

    return p1
.end method

.method public final zzc(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyf;->c:[I

    aget p1, v0, p1

    return p1
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/ads/zzwr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyf;->d:[Lcom/google/android/gms/internal/ads/zzwr;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzwr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyf;->b:Lcom/google/android/gms/internal/ads/zzwr;

    return-object v0
.end method

.class public final Lg/dtl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgd;


# instance fields
.field public final a:[B

.field public b:I

.field public final c:Lcom/google/android/gms/internal/ads/zzgd;

.field public final d:I

.field public final e:Lg/gww;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgd;ILg/gww;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    iput-object p1, p0, Lg/dtl;->c:Lcom/google/android/gms/internal/ads/zzgd;

    iput p2, p0, Lg/dtl;->d:I

    iput-object p3, p0, Lg/dtl;->e:Lg/gww;

    new-array p1, v0, [B

    iput-object p1, p0, Lg/dtl;->a:[B

    iput p2, p0, Lg/dtl;->b:I

    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 7

    iget v0, p0, Lg/dtl;->b:I

    iget-object v1, p0, Lg/dtl;->c:Lcom/google/android/gms/internal/ads/zzgd;

    const/4 v2, -0x1

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iget-object v3, p0, Lg/dtl;->a:[B

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzn;->zza([BII)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-byte v0, v3, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    new-array v3, v0, [B

    move v5, v0

    :goto_0
    if-lez v5, :cond_3

    invoke-interface {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzn;->zza([BII)I

    move-result v6

    if-eq v6, v2, :cond_2

    add-int/2addr v4, v6

    sub-int/2addr v5, v6

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    :goto_2
    if-lez v0, :cond_4

    add-int/lit8 v4, v0, -0x1

    aget-byte v5, v3, v4

    if-nez v5, :cond_4

    move v0, v4

    goto :goto_2

    :cond_4
    if-lez v0, :cond_5

    new-instance v4, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v4, v3, v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>([BI)V

    iget-object v0, p0, Lg/dtl;->e:Lg/gww;

    invoke-virtual {v0, v4}, Lg/gww;->zza(Lcom/google/android/gms/internal/ads/zzed;)V

    :cond_5
    :goto_3
    iget v0, p0, Lg/dtl;->d:I

    iput v0, p0, Lg/dtl;->b:I

    :cond_6
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzn;->zza([BII)I

    move-result p1

    if-eq p1, v2, :cond_7

    iget p2, p0, Lg/dtl;->b:I

    sub-int/2addr p2, p1

    iput p2, p0, Lg/dtl;->b:I

    :cond_7
    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgi;)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lg/dtl;->c:Lcom/google/android/gms/internal/ads/zzgd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgd;->zzc()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final zze()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lg/dtl;->c:Lcom/google/android/gms/internal/ads/zzgd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgd;->zze()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzhd;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lg/dtl;->c:Lcom/google/android/gms/internal/ads/zzgd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgd;->zzf(Lcom/google/android/gms/internal/ads/zzhd;)V

    return-void
.end method

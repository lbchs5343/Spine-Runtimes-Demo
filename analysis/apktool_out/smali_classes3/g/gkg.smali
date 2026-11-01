.class public final Lg/gkg;
.super Lcom/google/android/gms/internal/ads/zzfzd;
.source "SourceFile"


# direct methods
.method public static final d(I)Lcom/google/android/gms/internal/ads/zzfzd;
    .locals 0

    if-gez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzfzd;->b:Lg/bzf;

    return-object p0

    :cond_0
    if-lez p0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzfzd;->c:Lg/bzf;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfzd;->a:Lg/gkg;

    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzb(II)Lcom/google/android/gms/internal/ads/zzfzd;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    invoke-static {p1}, Lg/gkg;->d(I)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfzd;
    .locals 0

    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lg/gkg;->d(I)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    invoke-static {p1}, Lg/gkg;->d(I)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object p1

    return-object p1
.end method

.method public final zze(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;
    .locals 0

    invoke-static {p2, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    invoke-static {p1}, Lg/gkg;->d(I)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object p1

    return-object p1
.end method

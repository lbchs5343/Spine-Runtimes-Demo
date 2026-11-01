.class public final Lcom/google/android/gms/internal/ads/zzhgd;
.super Lcom/google/android/gms/internal/ads/zzhfs;
.source "SourceFile"


# virtual methods
.method public final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgd;
    .locals 1

    const-string p1, "key"

    const-string v0, "Network"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhgf;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "provider"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzhgf;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhfs;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhge;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhge;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhfs;->a:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Lg/fkw;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

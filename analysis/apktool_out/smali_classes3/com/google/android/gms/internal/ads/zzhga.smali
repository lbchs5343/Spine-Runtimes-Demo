.class public final Lcom/google/android/gms/internal/ads/zzhga;
.super Lcom/google/android/gms/internal/ads/zzhfs;
.source "SourceFile"


# virtual methods
.method public final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhga;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhgf;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "provider"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzhgf;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfs;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhgb;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhgb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhfs;->a:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Lg/fkw;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

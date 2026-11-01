.class public final Lcom/google/android/gms/internal/ads/zzgae;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(I)Ljava/util/ArrayList;
    .locals 1

    const-string v0, "initialArraySize"

    invoke-static {p0, v0}, Lg/bfc;->g(ILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static zzb(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfwh;)Ljava/util/List;
    .locals 1

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lg/gqa;

    invoke-direct {v0, p0, p1}, Lg/gqa;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfwh;)V

    return-object v0

    :cond_0
    new-instance v0, Lg/cfc;

    invoke-direct {v0, p0, p1}, Lg/cfc;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfwh;)V

    return-object v0
.end method

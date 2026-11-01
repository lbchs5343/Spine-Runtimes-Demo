.class public final Lcom/google/android/gms/internal/ads/zzffu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Landroid/content/Context;Ljava/util/List;)Lg/eno;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfeu;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzfeu;->zzc:Z

    if-eqz v2, :cond_0

    sget-object v1, Lg/gin;->b:Lg/gin;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Lg/gin;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzfeu;->zza:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfeu;->zzb:I

    invoke-direct {v2, v3, v1}, Lg/gin;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lg/gin;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lg/gin;

    new-instance v0, Lg/eno;

    invoke-direct {v0, p0, p1}, Lg/eno;-><init>(Landroid/content/Context;[Lg/gin;)V

    return-object v0
.end method

.method public static zzb(Lg/eno;)Lcom/google/android/gms/internal/ads/zzfeu;
    .locals 3

    iget-boolean v0, p0, Lg/eno;->zzi:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzfeu;

    const/4 v0, -0x3

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfeu;-><init>(IIZ)V

    return-object p0

    :cond_0
    iget v0, p0, Lg/eno;->zze:I

    iget p0, p0, Lg/eno;->zzb:I

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfeu;

    invoke-direct {v2, v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfeu;-><init>(IIZ)V

    return-object v2
.end method

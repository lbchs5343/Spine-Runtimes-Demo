.class public final synthetic Lcom/google/android/gms/internal/ads/zzxi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzd;->zzj()Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzxx;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzxx;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ccx;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzxx;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzxx;-><init>()V

    invoke-static {p2, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ccx;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzxx;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzxx;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfzd;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfzd;->zzb(II)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzxy;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzxy;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/ccx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzxy;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzxy;-><init>()V

    invoke-static {p2, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/ccx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzxy;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzxy;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzfzd;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzd;->zza()I

    move-result p1

    return p1
.end method

.class public final Lcom/google/android/gms/internal/ads/zzgou;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzgnd;

.field public final b:Ljava/util/Map;

.field public final c:Lcom/google/android/gms/internal/ads/zzgos;

.field public final d:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;Lcom/google/android/gms/internal/ads/zzgos;Lcom/google/android/gms/internal/ads/zzgnd;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgou;->b:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgou;->c:Lcom/google/android/gms/internal/ads/zzgos;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgou;->d:Ljava/lang/Class;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgou;->a:Lcom/google/android/gms/internal/ads/zzgnd;

    return-void
.end method

.method public static zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgor;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgor;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgor;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgnd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgou;->a:Lcom/google/android/gms/internal/ads/zzgnd;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzgos;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgou;->c:Lcom/google/android/gms/internal/ads/zzgos;

    return-object v0
.end method

.method public final zzd()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgou;->d:Ljava/lang/Class;

    return-object v0
.end method

.method public final zze()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgou;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final zzf([B)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgou;->b:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgwu;->zzb([B)Lcom/google/android/gms/internal/ads/zzgwu;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public final zzg()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgou;->a:Lcom/google/android/gms/internal/ads/zzgnd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgnd;->zza()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

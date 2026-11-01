.class public final synthetic Lcom/google/android/gms/internal/ads/zzdsj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdsl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdsl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsj;->zza:Lcom/google/android/gms/internal/ads/zzdsl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsj;->zza:Lcom/google/android/gms/internal/ads/zzdsl;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdsl;->b:Lcom/google/android/gms/internal/ads/zzdsm;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdsm;->a:Lcom/google/android/gms/internal/ads/zzdsr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdsl;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdsu;->zzf(Ljava/util/Map;)V

    return-void
.end method

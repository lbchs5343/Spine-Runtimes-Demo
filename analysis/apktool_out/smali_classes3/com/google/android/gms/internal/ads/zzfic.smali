.class public final synthetic Lcom/google/android/gms/internal/ads/zzfic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfie;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfhw;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfhc;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfhx;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfie;Lcom/google/android/gms/internal/ads/zzfhw;Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/internal/ads/zzfhx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfic;->zza:Lcom/google/android/gms/internal/ads/zzfie;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfic;->zzb:Lcom/google/android/gms/internal/ads/zzfhw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfic;->zzc:Lcom/google/android/gms/internal/ads/zzfhc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfic;->zzd:Lcom/google/android/gms/internal/ads/zzfhx;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lg/dcy;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfic;->zza:Lcom/google/android/gms/internal/ads/zzfie;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfic;->zzb:Lcom/google/android/gms/internal/ads/zzfhw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfic;->zzc:Lcom/google/android/gms/internal/ads/zzfhc;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfic;->zzd:Lcom/google/android/gms/internal/ads/zzfhx;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfhl;

    monitor-enter v0

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzfie;->a:Z

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzfhw;->zzb(Lcom/google/android/gms/internal/ads/zzfhl;)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfie;->d:Z

    if-nez v1, :cond_0

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzfhx;->zza()Lcom/google/android/gms/internal/ads/zzfhm;

    move-result-object v1

    invoke-interface {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzfhc;->zzd(Lcom/google/android/gms/internal/ads/zzfhm;Lcom/google/android/gms/internal/ads/zzfhl;)Z

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhv;

    invoke-direct {v1, p1, v3}, Lcom/google/android/gms/internal/ads/zzfhv;-><init>(Lcom/google/android/gms/internal/ads/zzfhl;Lcom/google/android/gms/internal/ads/zzfhx;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

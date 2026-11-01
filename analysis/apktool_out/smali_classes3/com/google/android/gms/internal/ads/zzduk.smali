.class public final synthetic Lcom/google/android/gms/internal/ads/zzduk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdup;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzblt;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfgm;

.field public final synthetic zze:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdup;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzblt;Lcom/google/android/gms/internal/ads/zzfgm;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzduk;->zza:Lcom/google/android/gms/internal/ads/zzdup;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzduk;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzduk;->zzc:Lcom/google/android/gms/internal/ads/zzblt;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzduk;->zzd:Lcom/google/android/gms/internal/ads/zzfgm;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzduk;->zze:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduk;->zza:Lcom/google/android/gms/internal/ads/zzdup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzduk;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzduk;->zzc:Lcom/google/android/gms/internal/ads/zzblt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzduk;->zzd:Lcom/google/android/gms/internal/ads/zzfgm;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzduk;->zze:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "Failed to initialize adapter. "

    :try_start_0
    const-string v6, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-static {v1, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzblt;->zzf()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdup;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdup;->i:Landroid/content/Context;

    :goto_0
    invoke-virtual {v3, v6, v2, v4}, Lcom/google/android/gms/internal/ads/zzfgm;->zzi(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzblt;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzffv; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfxm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfxm;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not implement the initialize() method."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzblt;->zze(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

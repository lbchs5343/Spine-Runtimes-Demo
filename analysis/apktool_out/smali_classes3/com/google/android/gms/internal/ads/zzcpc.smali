.class public final Lcom/google/android/gms/internal/ads/zzcpc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfx;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzhgp;

.field public final b:Lcom/google/android/gms/internal/ads/zzhgp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpc;->a:Lcom/google/android/gms/internal/ads/zzhgp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpc;->b:Lcom/google/android/gms/internal/ads/zzhgp;

    return-void
.end method

.method public static zzc(Ljava/util/concurrent/ScheduledExecutorService;Lg/cvb;)Lcom/google/android/gms/internal/ads/zzcze;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcze;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcze;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lg/cvb;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcze;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpc;->a:Lcom/google/android/gms/internal/ads/zzhgp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpc;->b:Lcom/google/android/gms/internal/ads/zzhgp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/cvb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcpc;->zzc(Ljava/util/concurrent/ScheduledExecutorService;Lg/cvb;)Lcom/google/android/gms/internal/ads/zzcze;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcpc;->zza()Lcom/google/android/gms/internal/ads/zzcze;

    move-result-object v0

    return-object v0
.end method

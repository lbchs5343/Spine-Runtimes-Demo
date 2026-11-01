.class public final synthetic Lcom/google/android/gms/internal/ads/zzcsc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcsf;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgee;

.field public final synthetic zzc:Lg/dcy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcsf;Lcom/google/android/gms/internal/ads/zzgee;Lg/dcy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zza:Lcom/google/android/gms/internal/ads/zzcsf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzb:Lcom/google/android/gms/internal/ads/zzgee;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzc:Lg/dcy;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lg/dcy;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zza:Lcom/google/android/gms/internal/ads/zzcsf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzb:Lcom/google/android/gms/internal/ads/zzgee;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzc:Lg/dcy;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcrq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzgee;->zzb(Ljava/lang/Object;)V

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbfa;->zza:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzcsf;->c:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v4, v0, p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzo(Lg/dcy;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method

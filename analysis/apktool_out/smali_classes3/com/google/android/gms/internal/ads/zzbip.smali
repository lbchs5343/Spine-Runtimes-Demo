.class public final synthetic Lcom/google/android/gms/internal/ads/zzbip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjr;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdel;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcnb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdel;Lcom/google/android/gms/internal/ads/zzcnb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbip;->zza:Lcom/google/android/gms/internal/ads/zzdel;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbip;->zzb:Lcom/google/android/gms/internal/ads/zzcnb;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbip;->zza:Lcom/google/android/gms/internal/ads/zzdel;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzbjq;->zzc(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzdel;)V

    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p1, "URL missing from click GMSG."

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbip;->zzb:Lcom/google/android/gms/internal/ads/zzcnb;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbjq;->zza(Lcom/google/android/gms/internal/ads/zzcfk;Ljava/lang/String;)Lg/dcy;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdz;->zzu(Lg/dcy;)Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbir;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/ads/zzbir;-><init>(Lcom/google/android/gms/internal/ads/zzcnb;Ljava/lang/String;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgdz;

    new-instance v1, Lg/fnq;

    const/16 v2, 0x17

    invoke-direct {v1, v2, p1}, Lg/fnq;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.class public final Lcom/google/android/gms/internal/ads/zzdno;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjr;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbhc;

.field public final b:Lcom/google/android/gms/internal/ads/zzdoc;

.field public final c:Lcom/google/android/gms/internal/ads/zzhfr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdjj;Lcom/google/android/gms/internal/ads/zzdiy;Lcom/google/android/gms/internal/ads/zzdoc;Lcom/google/android/gms/internal/ads/zzhfr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdiy;->zzA()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdjj;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdno;->a:Lcom/google/android/gms/internal/ads/zzbhc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdno;->b:Lcom/google/android/gms/internal/ads/zzdoc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdno;->c:Lcom/google/android/gms/internal/ads/zzhfr;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    const-string p1, "asset"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdno;->a:Lcom/google/android/gms/internal/ads/zzbhc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdno;->c:Lcom/google/android/gms/internal/ads/zzhfr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfr;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgs;

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zze(Lcom/google/android/gms/internal/ads/zzbgs;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    return-void
.end method

.method public final zzb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdno;->a:Lcom/google/android/gms/internal/ads/zzbhc;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdno;->b:Lcom/google/android/gms/internal/ads/zzdoc;

    const-string v1, "/nativeAdCustomClick"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzdoc;->zzl(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    return-void
.end method

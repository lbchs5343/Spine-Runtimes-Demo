.class public final Lcom/google/android/gms/internal/ads/zzcsg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzfff;

.field public final b:Lcom/google/android/gms/internal/ads/zzfet;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsg;->a:Lcom/google/android/gms/internal/ads/zzfff;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsg;->b:Lcom/google/android/gms/internal/ads/zzfet;

    if-nez p3, :cond_0

    const-string p3, "com.google.ads.mediation.admob.AdMobAdapter"

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcsg;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsg;->b:Lcom/google/android/gms/internal/ads/zzfet;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfew;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsg;->a:Lcom/google/android/gms/internal/ads/zzfff;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffe;->zzb:Lcom/google/android/gms/internal/ads/zzfew;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzfff;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsg;->a:Lcom/google/android/gms/internal/ads/zzfff;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsg;->c:Ljava/lang/String;

    return-object v0
.end method

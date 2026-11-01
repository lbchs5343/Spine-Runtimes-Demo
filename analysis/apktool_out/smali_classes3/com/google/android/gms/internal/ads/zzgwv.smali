.class public final Lcom/google/android/gms/internal/ads/zzgwv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzgwu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgwu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwv;->a:Lcom/google/android/gms/internal/ads/zzgwu;

    return-void
.end method

.method public static zzb([BLcom/google/android/gms/internal/ads/zzggn;)Lcom/google/android/gms/internal/ads/zzgwv;
    .locals 0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgwv;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgwu;->zzb([B)Lcom/google/android/gms/internal/ads/zzgwu;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzgwv;-><init>(Lcom/google/android/gms/internal/ads/zzgwu;)V

    return-object p1
.end method

.method public static zzc(I)Lcom/google/android/gms/internal/ads/zzgwv;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwv;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgoz;->zzb(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgwu;->zzb([B)Lcom/google/android/gms/internal/ads/zzgwu;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgwv;-><init>(Lcom/google/android/gms/internal/ads/zzgwu;)V

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwv;->a:Lcom/google/android/gms/internal/ads/zzgwu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwu;->zza()I

    move-result v0

    return v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzggn;)[B
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwv;->a:Lcom/google/android/gms/internal/ads/zzgwu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgwu;->zzc()[B

    move-result-object p1

    return-object p1
.end method

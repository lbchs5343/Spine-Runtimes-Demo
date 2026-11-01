.class public abstract Lg/emc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Lcom/google/android/gms/internal/ads/zzoz;
    .locals 0

    invoke-static {p0, p1}, Lg/avm;->k(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzoz;->zza:Lcom/google/android/gms/internal/ads/zzoz;

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzox;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzox;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzox;->zza(Z)Lcom/google/android/gms/internal/ads/zzox;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzox;->zzc(Z)Lcom/google/android/gms/internal/ads/zzox;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzox;->zzd()Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object p0

    return-object p0
.end method

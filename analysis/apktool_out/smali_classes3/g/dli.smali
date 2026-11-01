.class public abstract Lg/dli;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lg/ij;ZLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzoj;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzof;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzof;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "ExoPlayerImpl"

    const-string p1, "MediaMetricsService unavailable."

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzoj;

    invoke-static {}, Lg/dgd;->c()Landroid/media/metrics/LogSessionId;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzoj;-><init>(Landroid/media/metrics/LogSessionId;Ljava/lang/String;)V

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1, p0}, Lg/ij;->zzy(Lcom/google/android/gms/internal/ads/zzlz;)V

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzoj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzof;->zza()Landroid/media/metrics/LogSessionId;

    move-result-object p0

    invoke-direct {p1, p0, p3}, Lcom/google/android/gms/internal/ads/zzoj;-><init>(Landroid/media/metrics/LogSessionId;Ljava/lang/String;)V

    return-object p1
.end method

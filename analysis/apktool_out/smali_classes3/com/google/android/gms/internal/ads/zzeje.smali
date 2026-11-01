.class public final Lcom/google/android/gms/internal/ads/zzeje;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzeiv;


# direct methods
.method public static zzb(Lcom/google/android/gms/internal/ads/zzeiv;)Lcom/google/android/gms/internal/ads/zzeje;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeje;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/internal/ads/zzeje;->a:Lcom/google/android/gms/internal/ads/zzeiv;

    return-object v0
.end method


# virtual methods
.method public final zza(Lg/cvb;Lcom/google/android/gms/internal/ads/zzeix;Lcom/google/android/gms/internal/ads/zzefg;Lcom/google/android/gms/internal/ads/zzflr;)Lcom/google/android/gms/internal/ads/zzeiv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeje;->a:Lcom/google/android/gms/internal/ads/zzeiv;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeiv;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzeiv;-><init>(Lg/cvb;Lcom/google/android/gms/internal/ads/zzeix;Lcom/google/android/gms/internal/ads/zzefg;Lcom/google/android/gms/internal/ads/zzflr;)V

    return-object v0
.end method

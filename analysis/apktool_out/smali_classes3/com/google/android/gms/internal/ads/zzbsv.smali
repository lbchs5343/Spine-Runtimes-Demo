.class public final Lcom/google/android/gms/internal/ads/zzbsv;
.super Lcom/google/android/gms/internal/ads/zzbhl;
.source "SourceFile"


# instance fields
.field public final a:Lg/qu;


# direct methods
.method public constructor <init>(Lg/qu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsv;->a:Lg/qu;

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbhv;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbsp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbsp;-><init>(Lcom/google/android/gms/internal/ads/zzbhv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsv;->a:Lg/qu;

    invoke-interface {p1, v0}, Lg/qu;->onNativeAdLoaded(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method

.class public final synthetic Lcom/google/android/gms/internal/ads/zzdpe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/evo;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdpm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdpm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpe;->zza:Lcom/google/android/gms/internal/ads/zzdpm;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpe;->zza:Lcom/google/android/gms/internal/ads/zzdpm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdpm;->h:Lcom/google/android/gms/internal/ads/zzcwk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwk;->onAdClicked()V

    return-void
.end method

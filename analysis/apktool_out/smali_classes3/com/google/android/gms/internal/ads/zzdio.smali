.class public final synthetic Lcom/google/android/gms/internal/ads/zzdio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdit;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdio;->zza:Lcom/google/android/gms/internal/ads/zzdit;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdio;->zza:Lcom/google/android/gms/internal/ads/zzdit;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdit;->g:Lcom/google/android/gms/internal/ads/zzdjg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdjg;->zzi()V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdit;->b:Lcom/google/android/gms/internal/ads/zzdiy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzI()V

    return-void
.end method

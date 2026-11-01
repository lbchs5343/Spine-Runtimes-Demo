.class public final synthetic Lcom/google/android/gms/internal/ads/zzdii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdit;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdku;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdit;Lcom/google/android/gms/internal/ads/zzdku;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdii;->zza:Lcom/google/android/gms/internal/ads/zzdit;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdii;->zzb:Lcom/google/android/gms/internal/ads/zzdku;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdii;->zza:Lcom/google/android/gms/internal/ads/zzdit;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdii;->zzb:Lcom/google/android/gms/internal/ads/zzdku;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdit;->ah(Lcom/google/android/gms/internal/ads/zzdku;)V

    return-void
.end method

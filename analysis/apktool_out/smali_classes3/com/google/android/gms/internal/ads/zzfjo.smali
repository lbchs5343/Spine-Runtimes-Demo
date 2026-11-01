.class public final synthetic Lcom/google/android/gms/internal/ads/zzfjo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcb;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfix;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zza:Lcom/google/android/gms/internal/ads/zzfix;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zza:Lcom/google/android/gms/internal/ads/zzfix;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfjs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfix;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfjl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfix;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfjs;->zzdC(Lcom/google/android/gms/internal/ads/zzfjl;Ljava/lang/String;)V

    return-void
.end method

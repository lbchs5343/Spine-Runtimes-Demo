.class public final synthetic Lcom/google/android/gms/internal/ads/zzdkj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjr;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdkk;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdkk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkj;->zza:Lcom/google/android/gms/internal/ads/zzdkk;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkj;->zza:Lcom/google/android/gms/internal/ads/zzdkk;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Hiding native ads overlay."

    invoke-static {v0}, Lg/agd;->k(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzF()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdkk;->d:Lcom/google/android/gms/internal/ads/zzcoi;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcoi;->zze(Z)V

    return-void
.end method

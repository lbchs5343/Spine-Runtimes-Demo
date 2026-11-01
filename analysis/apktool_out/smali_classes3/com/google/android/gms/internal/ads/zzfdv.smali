.class public final synthetic Lcom/google/android/gms/internal/ads/zzfdv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfbx;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbwj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbwj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdv;->zza:Lcom/google/android/gms/internal/ads/zzbwj;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdv;->zza:Lcom/google/android/gms/internal/ads/zzbwj;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbxf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbxt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbwj;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbwj;->zzb()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbxt;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzbxf;->zzk(Lcom/google/android/gms/internal/ads/zzbwz;)V

    return-void
.end method

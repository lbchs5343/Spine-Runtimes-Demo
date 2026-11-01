.class public final synthetic Lcom/google/android/gms/internal/ads/zznm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdp;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzlx;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzci;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzci;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznm;->zza:Lcom/google/android/gms/internal/ads/zzlx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zznm;->zzb:Lcom/google/android/gms/internal/ads/zzci;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzlz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznm;->zza:Lcom/google/android/gms/internal/ads/zzlx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznm;->zzb:Lcom/google/android/gms/internal/ads/zzci;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzlz;->zzq(Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzci;)V

    iget p1, v1, Lcom/google/android/gms/internal/ads/zzci;->zzb:I

    return-void
.end method

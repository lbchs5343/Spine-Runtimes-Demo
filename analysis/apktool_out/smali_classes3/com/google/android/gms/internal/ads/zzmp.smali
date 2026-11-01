.class public final synthetic Lcom/google/android/gms/internal/ads/zzmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdq;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzoa;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzoa;Lcom/google/android/gms/internal/ads/zzbp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzb:Lcom/google/android/gms/internal/ads/zzbp;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzz;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzb:Lcom/google/android/gms/internal/ads/zzbp;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzlz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzoa;->e:Landroid/util/SparseArray;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzly;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/ads/zzly;-><init>(Lcom/google/android/gms/internal/ads/zzz;Landroid/util/SparseArray;)V

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzlz;->zzi(Lcom/google/android/gms/internal/ads/zzbp;Lcom/google/android/gms/internal/ads/zzly;)V

    return-void
.end method

.class public final Lcom/google/android/gms/internal/ads/zzfm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzfzo;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzff;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzfh;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzfl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfd;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzff;Lcom/google/android/gms/internal/ads/zzfh;Lcom/google/android/gms/internal/ads/zzfl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfzo;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfm;->zza:Lcom/google/android/gms/internal/ads/zzfzo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfm;->zzb:Lcom/google/android/gms/internal/ads/zzff;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfm;->zzc:Lcom/google/android/gms/internal/ads/zzfh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfm;->zzd:Lcom/google/android/gms/internal/ads/zzfl;

    return-void
.end method

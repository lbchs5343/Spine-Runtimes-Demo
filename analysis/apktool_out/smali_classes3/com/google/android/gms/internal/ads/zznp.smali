.class public final synthetic Lcom/google/android/gms/internal/ads/zznp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdp;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzlx;

.field public final synthetic zzb:I

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbn;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbn;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzlx;ILcom/google/android/gms/internal/ads/zzbn;Lcom/google/android/gms/internal/ads/zzbn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznp;->zza:Lcom/google/android/gms/internal/ads/zzlx;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznp;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zznp;->zzc:Lcom/google/android/gms/internal/ads/zzbn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zznp;->zzd:Lcom/google/android/gms/internal/ads/zzbn;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzlz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznp;->zza:Lcom/google/android/gms/internal/ads/zzlx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznp;->zzd:Lcom/google/android/gms/internal/ads/zzbn;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zznp;->zzb:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznp;->zzc:Lcom/google/android/gms/internal/ads/zzbn;

    invoke-interface {p1, v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzlz;->zzm(Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzbn;Lcom/google/android/gms/internal/ads/zzbn;I)V

    return-void
.end method

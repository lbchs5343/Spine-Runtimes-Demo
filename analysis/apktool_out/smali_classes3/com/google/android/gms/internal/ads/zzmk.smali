.class public final synthetic Lcom/google/android/gms/internal/ads/zzmk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdp;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzlx;

.field public final synthetic zzb:I

.field public final synthetic zzc:J

.field public final synthetic zzd:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzlx;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmk;->zza:Lcom/google/android/gms/internal/ads/zzlx;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzd:J

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzlz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmk;->zza:Lcom/google/android/gms/internal/ads/zzlx;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzb:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzc:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzd:J

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzlz;->zzf(Lcom/google/android/gms/internal/ads/zzlx;IJJ)V

    return-void
.end method

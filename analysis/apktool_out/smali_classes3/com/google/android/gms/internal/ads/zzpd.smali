.class public final synthetic Lcom/google/android/gms/internal/ads/zzpd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzpm;

.field public final synthetic zzb:I

.field public final synthetic zzc:J

.field public final synthetic zzd:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzpm;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpd;->zza:Lcom/google/android/gms/internal/ads/zzpm;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzpd;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzpd;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzpd;->zzd:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpd;->zza:Lcom/google/android/gms/internal/ads/zzpm;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpd;->zzb:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzpd;->zzc:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzpd;->zzd:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpm;->b:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzpn;->zzk(IJJ)V

    return-void
.end method

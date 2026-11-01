.class public final synthetic Lcom/google/android/gms/internal/ads/zzpk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzpm;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:J

.field public final synthetic zzd:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzpm;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zza:Lcom/google/android/gms/internal/ads/zzpm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzb:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzd:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpk;->zza:Lcom/google/android/gms/internal/ads/zzpm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzb:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzd:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpm;->b:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzpn;->zzb(Ljava/lang/String;JJ)V

    return-void
.end method

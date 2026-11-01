.class public final Lcom/google/android/gms/internal/ads/zzqm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lcom/google/android/gms/internal/ads/zzcm;

.field public final b:Lcom/google/android/gms/internal/ads/zzre;

.field public final c:Lcom/google/android/gms/internal/ads/zzcp;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zzcm;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzre;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzre;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcp;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzcm;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->a:[Lcom/google/android/gms/internal/ads/zzcm;

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->b:Lcom/google/android/gms/internal/ads/zzre;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->c:Lcom/google/android/gms/internal/ads/zzcp;

    aput-object v0, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    return-void
.end method


# virtual methods
.method public final zza(J)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->c:Lcom/google/android/gms/internal/ads/zzcp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcp;->zzg()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcp;->zzi(J)J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method public final zzb()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->b:Lcom/google/android/gms/internal/ads/zzre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzre;->zzo()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbj;)Lcom/google/android/gms/internal/ads/zzbj;
    .locals 2

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzbj;->zzb:F

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->c:Lcom/google/android/gms/internal/ads/zzcp;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcp;->zzk(F)V

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzbj;->zzc:F

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcp;->zzj(F)V

    return-object p1
.end method

.method public final zzd(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->b:Lcom/google/android/gms/internal/ads/zzre;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzre;->zzp(Z)V

    return p1
.end method

.method public final zze()[Lcom/google/android/gms/internal/ads/zzcm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->a:[Lcom/google/android/gms/internal/ads/zzcm;

    return-object v0
.end method

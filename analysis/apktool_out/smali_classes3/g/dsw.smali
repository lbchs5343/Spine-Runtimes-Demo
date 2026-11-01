.class public final Lg/dsw;
.super Lcom/google/android/gms/internal/ads/zzuf;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbv;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzuf;-><init>(Lcom/google/android/gms/internal/ads/zzbv;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbu;-><init>()V

    iput-object p1, p0, Lg/dsw;->a:Lcom/google/android/gms/internal/ads/zzbu;

    return-void
.end method


# virtual methods
.method public final zzd(ILcom/google/android/gms/internal/ads/zzbt;Z)Lcom/google/android/gms/internal/ads/zzbt;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->d:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbv;->zzd(ILcom/google/android/gms/internal/ads/zzbt;Z)Lcom/google/android/gms/internal/ads/zzbt;

    move-result-object v1

    iget p1, v1, Lcom/google/android/gms/internal/ads/zzbt;->zzc:I

    iget-object p3, p0, Lg/dsw;->a:Lcom/google/android/gms/internal/ads/zzbu;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, p3, v2, v3}, Lcom/google/android/gms/internal/ads/zzbv;->zze(ILcom/google/android/gms/internal/ads/zzbu;J)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbu;->zzb()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzbt;->zza:Ljava/lang/Object;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzbt;->zzb:Ljava/lang/Object;

    iget v4, p2, Lcom/google/android/gms/internal/ads/zzbt;->zzc:I

    iget-wide v5, p2, Lcom/google/android/gms/internal/ads/zzbt;->zzd:J

    sget-object v9, Lcom/google/android/gms/internal/ads/zzb;->zza:Lcom/google/android/gms/internal/ads/zzb;

    const/4 v10, 0x1

    const-wide/16 v7, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzbt;->zzi(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/gms/internal/ads/zzb;Z)Lcom/google/android/gms/internal/ads/zzbt;

    return-object v1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, v1, Lcom/google/android/gms/internal/ads/zzbt;->zzf:Z

    return-object v1
.end method

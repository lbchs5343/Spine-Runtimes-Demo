.class public final synthetic Lcom/google/android/gms/internal/ads/zzcej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgc;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzces;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzces;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zza:Lcom/google/android/gms/internal/ads/zzces;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzb:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzc:Z

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgd;
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zza:Lcom/google/android/gms/internal/ads/zzces;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzb:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzc:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    if-eq v3, v1, :cond_0

    const/4 v1, 0x0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzces;->v:Lcom/google/android/gms/internal/ads/zzcce;

    new-instance v1, Lg/bhg;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzcce;->zzd:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzcce;->zze:I

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzcce;->zzm:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzcce;->zzn:J

    invoke-direct/range {v1 .. v9}, Lg/bhg;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzces;IIJJ)V

    return-object v1
.end method

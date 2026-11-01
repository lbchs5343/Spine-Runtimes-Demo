.class public final synthetic Lcom/google/android/gms/internal/ads/zzcel;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcel;->zza:Lcom/google/android/gms/internal/ads/zzces;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcel;->zzb:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzcel;->zzc:Z

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgd;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcel;->zza:Lcom/google/android/gms/internal/ads/zzces;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcel;->zzb:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcel;->zzc:Z

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzces;->v:Lcom/google/android/gms/internal/ads/zzcce;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzgl;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzgl;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzgl;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgl;

    const/4 v1, 0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzgl;->zze(Lcom/google/android/gms/internal/ads/zzhd;)Lcom/google/android/gms/internal/ads/zzgl;

    iget v0, v3, Lcom/google/android/gms/internal/ads/zzcce;->zzd:I

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzgl;->zzc(I)Lcom/google/android/gms/internal/ads/zzgl;

    iget v0, v3, Lcom/google/android/gms/internal/ads/zzcce;->zze:I

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzgl;->zzd(I)Lcom/google/android/gms/internal/ads/zzgl;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzgl;->zzb(Z)Lcom/google/android/gms/internal/ads/zzgl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgl;->zzg()Lcom/google/android/gms/internal/ads/zzgq;

    move-result-object v0

    return-object v0
.end method

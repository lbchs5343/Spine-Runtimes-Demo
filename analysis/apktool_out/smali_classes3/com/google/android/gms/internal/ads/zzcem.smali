.class public final synthetic Lcom/google/android/gms/internal/ads/zzcem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgc;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzces;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzces;Lcom/google/android/gms/internal/ads/zzgc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcem;->zza:Lcom/google/android/gms/internal/ads/zzces;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzb:Lcom/google/android/gms/internal/ads/zzgc;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgd;
    .locals 7

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcem;->zza:Lcom/google/android/gms/internal/ads/zzces;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzb:Lcom/google/android/gms/internal/ads/zzgc;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcef;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgc;->zza()Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object v2

    new-instance v6, Lcom/google/android/gms/internal/ads/zzceq;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/zzceq;-><init>(Lcom/google/android/gms/internal/ads/zzces;)V

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzces;->d:Ljava/lang/String;

    iget v4, v5, Lcom/google/android/gms/internal/ads/zzces;->t:I

    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzces;->j:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzcef;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgd;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzhd;Lcom/google/android/gms/internal/ads/zzceq;)V

    return-object v0
.end method

.class public final Lcom/google/android/gms/internal/ads/zzgpm;
.super Lcom/google/android/gms/internal/ads/zzgqn;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Integer;

.field public final b:Lcom/google/android/gms/internal/ads/zzgpu;

.field public final c:Lcom/google/android/gms/internal/ads/zzgwv;

.field public final d:Lcom/google/android/gms/internal/ads/zzgwu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgpu;Lcom/google/android/gms/internal/ads/zzgwv;Lcom/google/android/gms/internal/ads/zzgwu;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgpm;->b:Lcom/google/android/gms/internal/ads/zzgpu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgpm;->c:Lcom/google/android/gms/internal/ads/zzgwv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgpm;->d:Lcom/google/android/gms/internal/ads/zzgwu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgpm;->a:Ljava/lang/Integer;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzgpk;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgpk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgpk;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/ads/zzgpu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpm;->b:Lcom/google/android/gms/internal/ads/zzgpu;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzgwu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpm;->d:Lcom/google/android/gms/internal/ads/zzgwu;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgwv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpm;->c:Lcom/google/android/gms/internal/ads/zzgwv;

    return-object v0
.end method

.method public final zze()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpm;->a:Ljava/lang/Integer;

    return-object v0
.end method

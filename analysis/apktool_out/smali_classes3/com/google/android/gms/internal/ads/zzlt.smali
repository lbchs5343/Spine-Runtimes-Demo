.class public final Lcom/google/android/gms/internal/ads/zzlt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzip;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcep;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzip;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzip;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcep;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlt;->a:Lcom/google/android/gms/internal/ads/zzip;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzkl;)Lcom/google/android/gms/internal/ads/zzlt;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlt;->a:Lcom/google/android/gms/internal/ads/zzip;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzip;->t:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzih;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzih;-><init>(Lcom/google/android/gms/internal/ads/zzkl;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzip;->i:Lcom/google/android/gms/internal/ads/zzfxg;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzyj;)Lcom/google/android/gms/internal/ads/zzlt;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlt;->a:Lcom/google/android/gms/internal/ads/zzip;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzip;->t:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzio;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzio;-><init>(Lcom/google/android/gms/internal/ads/zzyj;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzip;->g:Lcom/google/android/gms/internal/ads/zzfxg;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzlu;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlt;->a:Lcom/google/android/gms/internal/ads/zzip;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzip;->t:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzip;->t:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzlu;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzlu;-><init>(Lcom/google/android/gms/internal/ads/zzip;)V

    return-object v1
.end method

.class public final Lg/cub;
.super Lcom/google/android/gms/internal/ads/zzbxi;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzfms;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzgfa;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzbxc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfms;Lcom/google/android/gms/internal/ads/zzgfa;Lcom/google/android/gms/internal/ads/zzfek;)V
    .locals 0

    iput-object p2, p0, Lg/cub;->b:Lcom/google/android/gms/internal/ads/zzgfa;

    iput-object p3, p0, Lg/cub;->c:Lcom/google/android/gms/internal/ads/zzbxc;

    iput-object p1, p0, Lg/cub;->a:Lcom/google/android/gms/internal/ads/zzfms;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbxi;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(I)V
    .locals 0

    return-void
.end method

.method public final zzf(Lg/abz;)V
    .locals 5

    invoke-virtual {p1}, Lg/abz;->zzb()Lg/bfi;

    move-result-object v0

    invoke-virtual {v0}, Lg/bfi;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/cub;->a:Lcom/google/android/gms/internal/ads/zzfms;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfmo;->f:Lg/ghd;

    iget-object v2, v2, Lg/ghd;->zza:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to load rewarded ad with error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adUnitId: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    new-instance v0, Lg/zp;

    iget-object v2, p0, Lg/cub;->b:Lcom/google/android/gms/internal/ads/zzgfa;

    invoke-direct {v0, v1, v2}, Lg/zp;-><init>(Lcom/google/android/gms/internal/ads/zzfmo;Lcom/google/android/gms/internal/ads/zzgfa;)V

    invoke-virtual {v0, p1}, Lg/zp;->c(Lg/abz;)V

    return-void
.end method

.method public final zzg()V
    .locals 3

    new-instance v0, Lg/zp;

    iget-object v1, p0, Lg/cub;->a:Lcom/google/android/gms/internal/ads/zzfms;

    iget-object v2, p0, Lg/cub;->b:Lcom/google/android/gms/internal/ads/zzgfa;

    invoke-direct {v0, v1, v2}, Lg/zp;-><init>(Lcom/google/android/gms/internal/ads/zzfmo;Lcom/google/android/gms/internal/ads/zzgfa;)V

    iget-object v1, p0, Lg/cub;->c:Lcom/google/android/gms/internal/ads/zzbxc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzflu;->zzb(Ljava/lang/Object;)V

    return-void
.end method

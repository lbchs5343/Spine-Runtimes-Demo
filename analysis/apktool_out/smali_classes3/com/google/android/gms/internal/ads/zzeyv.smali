.class public final Lcom/google/android/gms/internal/ads/zzeyv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbvx;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbvx;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyv;->a:Lcom/google/android/gms/internal/ads/zzbvx;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzeyv;->b:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeyv;->b:I

    return v0
.end method

.method public final zzb()Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyv;->a:Lcom/google/android/gms/internal/ads/zzbvx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbvx;->zzf:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyv;->a:Lcom/google/android/gms/internal/ads/zzbvx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbvx;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyv;->a:Lcom/google/android/gms/internal/ads/zzbvx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbvx;->zza:Landroid/os/Bundle;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfxf;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyv;->a:Lcom/google/android/gms/internal/ads/zzbvx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbvx;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyv;->a:Lcom/google/android/gms/internal/ads/zzbvx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbvx;->zze:Ljava/util/List;

    return-object v0
.end method

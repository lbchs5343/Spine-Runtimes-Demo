.class public final Lcom/google/android/gms/internal/ads/zzdig;
.super Lcom/google/android/gms/internal/ads/zzbfu;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzdiy;

.field public b:Lg/bjq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdiy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdig;->a:Lcom/google/android/gms/internal/ads/zzdiy;

    return-void
.end method

.method public static c(Lg/bjq;)F
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zze()F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdig;->a:Lcom/google/android/gms/internal/ads/zzdiy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzb()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzb()F

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzj()Lg/cbz;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzj()Lg/cbz;

    move-result-object v0

    invoke-interface {v0}, Lg/cbz;->zze()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Remote exception getting video controller aspect ratio."

    invoke-static {v1, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdig;->b:Lg/bjq;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdig;->c(Lg/bjq;)F

    move-result v0

    return v0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzm()Lcom/google/android/gms/internal/ads/zzbfy;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfy;->zzd()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfy;->zzc()I

    move-result v1

    if-eq v1, v3, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfy;->zzd()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfy;->zzc()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    cmpl-float v2, v1, v2

    if-nez v2, :cond_5

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfy;->zzf()Lg/bjq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdig;->c(Lg/bjq;)F

    move-result v0

    return v0

    :cond_5
    return v1
.end method

.method public final zzf()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdig;->a:Lcom/google/android/gms/internal/ads/zzdiy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzj()Lg/cbz;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzj()Lg/cbz;

    move-result-object v0

    invoke-interface {v0}, Lg/cbz;->zzf()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdig;->a:Lcom/google/android/gms/internal/ads/zzdiy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzj()Lg/cbz;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzj()Lg/cbz;

    move-result-object v0

    invoke-interface {v0}, Lg/cbz;->zzg()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()Lg/cbz;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdig;->a:Lcom/google/android/gms/internal/ads/zzdiy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzj()Lg/cbz;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()Lg/bjq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdig;->b:Lg/bjq;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdig;->a:Lcom/google/android/gms/internal/ads/zzdiy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzm()Lcom/google/android/gms/internal/ads/zzbfy;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfy;->zzf()Lg/bjq;

    move-result-object v0

    return-object v0
.end method

.method public final zzj(Lg/bjq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdig;->b:Lg/bjq;

    return-void
.end method

.method public final zzk()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdig;->a:Lcom/google/android/gms/internal/ads/zzdiy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzaf()Z

    move-result v0

    return v0
.end method

.method public final zzl()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdig;->a:Lcom/google/android/gms/internal/ads/zzdiy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzj()Lg/cbz;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzbhg;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdig;->a:Lcom/google/android/gms/internal/ads/zzdiy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzj()Lg/cbz;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/internal/ads/zzcgm;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzj()Lg/cbz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgm;->zzv(Lcom/google/android/gms/internal/ads/zzbhg;)V

    :cond_0
    return-void
.end method

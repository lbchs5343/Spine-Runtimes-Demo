.class public final Lcom/google/android/gms/internal/ads/zzduc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bwx;


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/gms/internal/ads/zzdtr;

.field public final c:Lcom/google/android/gms/internal/ads/zzfek;


# direct methods
.method public constructor <init>(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdtr;Lcom/google/android/gms/internal/ads/zzchk;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzduc;->a:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzduc;->b:Lcom/google/android/gms/internal/ads/zzdtr;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzchk;->zzw()Lcom/google/android/gms/internal/ads/zzfem;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzfem;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfem;

    invoke-interface {p1, p6}, Lcom/google/android/gms/internal/ads/zzfem;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfem;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfem;->zzc()Lcom/google/android/gms/internal/ads/zzfen;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfen;->zza()Lcom/google/android/gms/internal/ads/zzfek;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzduc;->c:Lcom/google/android/gms/internal/ads/zzfek;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 0

    return-void
.end method

.method public final zzb(Lg/aeh;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduc;->c:Lcom/google/android/gms/internal/ads/zzfek;

    new-instance v1, Lg/dof;

    invoke-direct {v1, p0}, Lg/dof;-><init>(Lcom/google/android/gms/internal/ads/zzduc;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfek;->zzf(Lg/aeh;Lcom/google/android/gms/internal/ads/zzbxj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final zzc()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduc;->c:Lcom/google/android/gms/internal/ads/zzfek;

    :try_start_0
    new-instance v1, Lg/eef;

    invoke-direct {v1, p0}, Lg/eef;-><init>(Lcom/google/android/gms/internal/ads/zzduc;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfek;->zzk(Lcom/google/android/gms/internal/ads/zzbxf;)V

    new-instance v1, Lg/bpp;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfek;->zzm(Lg/bjq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

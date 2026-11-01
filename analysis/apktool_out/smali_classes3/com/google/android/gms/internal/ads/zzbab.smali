.class public final Lcom/google/android/gms/internal/ads/zzbab;
.super Lg/ls;
.source "SourceFile"


# instance fields
.field public a:Lg/fas;

.field public final b:Lcom/google/android/gms/internal/ads/zzbaf;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/android/gms/internal/ads/zzbac;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbaf;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbac;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbac;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbab;->d:Lcom/google/android/gms/internal/ads/zzbac;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbab;->b:Lcom/google/android/gms/internal/ads/zzbaf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbab;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbab;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getFullScreenContentCallback()Lg/fas;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbab;->a:Lg/fas;

    return-object v0
.end method

.method public final getOnPaidEventListener()Lg/dpt;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getResponseInfo()Lg/bof;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbab;->b:Lcom/google/android/gms/internal/ads/zzbaf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbaf;->zzf()Lg/gcq;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lg/bof;

    invoke-direct {v1, v0}, Lg/bof;-><init>(Lg/gcq;)V

    return-object v1
.end method

.method public final setFullScreenContentCallback(Lg/fas;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbab;->a:Lg/fas;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbab;->d:Lcom/google/android/gms/internal/ads/zzbac;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbac;->zzg(Lg/fas;)V

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbab;->b:Lcom/google/android/gms/internal/ads/zzbaf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbaf;->zzg(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final setOnPaidEventListener(Lg/dpt;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbab;->b:Lcom/google/android/gms/internal/ads/zzbaf;

    new-instance v0, Lg/bmt;

    invoke-direct {v0}, Lg/bmt;-><init>()V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbaf;->zzh(Lg/gwt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbab;->b:Lcom/google/android/gms/internal/ads/zzbaf;

    new-instance v1, Lg/bpp;

    invoke-direct {v1, p1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbab;->d:Lcom/google/android/gms/internal/ads/zzbac;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbaf;->zzi(Lg/bjq;Lcom/google/android/gms/internal/ads/zzbam;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

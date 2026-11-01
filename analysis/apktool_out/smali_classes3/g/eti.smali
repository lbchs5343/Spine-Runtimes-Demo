.class public abstract Lg/eti;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static isAdAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    sget-object v0, Lg/cbv;->a:Lg/cbv;

    iget-object v0, v0, Lg/cbv;->e:Lg/ph;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>()V

    invoke-virtual {v0, p0, v1}, Lg/ph;->k(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpc;)Lg/dzg;

    move-result-object p0

    invoke-interface {p0, p1}, Lg/dzg;->zzk(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Lg/awn;Lg/gsg;)V
    .locals 8

    const-string v0, "Context cannot be null."

    invoke-static {p0, v0}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdUnitId cannot be null."

    invoke-static {p1, v0}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdRequest cannot be null."

    invoke-static {p2, v0}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "LoadCallback cannot be null."

    invoke-static {p3, v0}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lg/ckd;->aj(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbel;->zzi:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzkP:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lg/ga;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lg/chq;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lg/chq;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbml;

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbml;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, v4, Lg/awn;->a:Lg/qo;

    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzbml;->zza(Lg/qo;Lg/df;)V

    return-void
.end method

.method public static pollAd(Landroid/content/Context;Ljava/lang/String;)Lg/eti;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lg/cbv;->a:Lg/cbv;

    iget-object v1, v1, Lg/cbv;->e:Lg/ph;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>()V

    invoke-virtual {v1, v2, v3}, Lg/ph;->k(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpc;)Lg/dzg;

    move-result-object v1

    invoke-interface {v1, p1}, Lg/dzg;->zzf(Ljava/lang/String;)Lg/deq;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "Failed to obtain an Interstitial Ad from the preloader."

    invoke-static {p0, v0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbml;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbml;-><init>(Landroid/content/Context;Ljava/lang/String;Lg/deq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :goto_0
    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method


# virtual methods
.method public abstract getResponseInfo()Lg/bof;
.end method

.method public abstract setFullScreenContentCallback(Lg/fas;)V
.end method

.method public abstract setImmersiveMode(Z)V
.end method

.method public abstract show(Landroid/app/Activity;)V
.end method

.class public abstract Lg/ls;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APP_OPEN_AD_ORIENTATION_LANDSCAPE:I = 0x2

.field public static final APP_OPEN_AD_ORIENTATION_PORTRAIT:I = 0x1


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

    invoke-interface {p0, p1}, Lg/dzg;->zzj(Ljava/lang/String;)Z

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

.method public static load(Landroid/content/Context;Ljava/lang/String;Lg/awn;ILg/fle;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Context cannot be null."

    invoke-static {p0, v0}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitId cannot be null."

    invoke-static {p1, v0}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdRequest cannot be null."

    invoke-static {p2, v0}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lg/ckd;->aj(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbel;->zzd:Lcom/google/android/gms/internal/ads/zzbdx;

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

    new-instance v1, Lg/anv;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lg/anv;-><init>(Landroid/content/Context;Ljava/lang/String;Lg/awn;ILg/fle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    move v5, p3

    move-object v6, p4

    move-object v3, p0

    move-object v4, p1

    move-object p0, p2

    new-instance v2, Lcom/google/android/gms/internal/ads/zzban;

    iget-object p0, p0, Lg/awn;->a:Lg/qo;

    move-object v7, v6

    move v6, v5

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzban;-><init>(Landroid/content/Context;Ljava/lang/String;Lg/qo;ILg/fle;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzban;->zza()V

    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Lg/awn;Lg/fle;)V
    .locals 8

    const-string v0, "Context cannot be null."

    invoke-static {p0, v0}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitId cannot be null."

    invoke-static {p1, v0}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdRequest cannot be null."

    invoke-static {p2, v0}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lg/ckd;->aj(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbel;->zzd:Lcom/google/android/gms/internal/ads/zzbdx;

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

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lg/chq;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    move-object v5, p3

    move-object v3, p0

    move-object v4, p1

    move-object p0, p2

    new-instance v2, Lcom/google/android/gms/internal/ads/zzban;

    iget-object p0, p0, Lg/awn;->a:Lg/qo;

    const/4 v6, 0x3

    move-object v7, v5

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzban;-><init>(Landroid/content/Context;Ljava/lang/String;Lg/qo;ILg/fle;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzban;->zza()V

    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Lg/elc;ILg/fle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p3, "Context cannot be null."

    invoke-static {p0, p3}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "adUnitId cannot be null."

    invoke-static {p1, p0}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "AdManagerAdRequest cannot be null."

    invoke-static {p2, p0}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static pollAd(Landroid/content/Context;Ljava/lang/String;)Lg/ls;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lg/cbv;->a:Lg/cbv;

    iget-object v1, v1, Lg/cbv;->e:Lg/ph;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>()V

    invoke-virtual {v1, p0, v2}, Lg/ph;->k(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpc;)Lg/dzg;

    move-result-object p0

    invoke-interface {p0, p1}, Lg/dzg;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbaf;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Failed to obtain an App Open ad from the preloader."

    invoke-static {p0, v0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbab;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbab;-><init>(Lcom/google/android/gms/internal/ads/zzbaf;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_0
    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method


# virtual methods
.method public abstract getResponseInfo()Lg/bof;
.end method

.method public abstract show(Landroid/app/Activity;)V
.end method

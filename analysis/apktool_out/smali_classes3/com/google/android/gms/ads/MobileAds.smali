.class public Lcom/google/android/gms/ads/MobileAds;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR_DOMAIN:Ljava/lang/String; = "com.google.android.gms.ads"


# direct methods
.method public static disableMediationAdapterInitialization(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lg/bza;->l()Lg/bza;

    move-result-object v0

    iget-object v1, v0, Lg/bza;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p0}, Lg/bza;->q(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, v0, Lg/bza;->c:Lg/apq;

    invoke-interface {p0}, Lg/apq;->zzi()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string p0, "Unable to disable mediation adapter initialization."

    invoke-static {p0}, Lg/agd;->d(Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static getInitializationStatus()Lg/gkj;
    .locals 4

    invoke-static {}, Lg/bza;->l()Lg/bza;

    move-result-object v0

    iget-object v1, v0, Lg/bza;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lg/bza;->c:Lg/apq;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "MobileAds.initialize() must be called prior to getting initialization status."

    invoke-static {v3, v2}, Lg/ckd;->an(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v0, Lg/bza;->c:Lg/apq;

    invoke-interface {v0}, Lg/apq;->zzg()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lg/bza;->n(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzbly;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    const-string v0, "Unable to get Initialization status."

    invoke-static {v0}, Lg/agd;->d(Ljava/lang/String;)V

    new-instance v0, Lg/fbc;

    const/16 v2, 0x15

    invoke-direct {v0, v2}, Lg/fbc;-><init>(I)V

    monitor-exit v1

    :goto_1
    return-object v0

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static getRequestConfiguration()Lg/bah;
    .locals 1

    invoke-static {}, Lg/bza;->l()Lg/bza;

    move-result-object v0

    iget-object v0, v0, Lg/bza;->h:Lg/bah;

    return-object v0
.end method

.method public static getVersion()Lg/axk;
    .locals 6

    invoke-static {}, Lg/bza;->l()Lg/bza;

    const-string v0, "23.5.0"

    const-string v1, "\\."

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    new-instance v0, Lg/axk;

    invoke-direct {v0, v3, v3, v3}, Lg/axk;-><init>(III)V

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lg/axk;

    aget-object v2, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v4, v0}, Lg/axk;-><init>(III)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Lg/axk;

    invoke-direct {v0, v3, v3, v3}, Lg/axk;-><init>(III)V

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lg/bza;->l()Lg/bza;

    move-result-object v0

    invoke-virtual {v0, p0}, Lg/bza;->o(Landroid/content/Context;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Lg/gzw;)V
    .locals 0

    invoke-static {}, Lg/bza;->l()Lg/bza;

    move-result-object p1

    invoke-virtual {p1, p0}, Lg/bza;->o(Landroid/content/Context;)V

    return-void
.end method

.method public static openAdInspector(Landroid/content/Context;Lg/bjj;)V
    .locals 3

    invoke-static {}, Lg/bza;->l()Lg/bza;

    move-result-object v0

    iget-object v1, v0, Lg/bza;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p0}, Lg/bza;->q(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, v0, Lg/bza;->c:Lg/apq;

    new-instance v0, Lg/aiz;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lg/aiz;-><init>(I)V

    invoke-interface {p0, v0}, Lg/apq;->zzm(Lg/dri;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string p0, "Unable to open the ad inspector."

    invoke-static {p0}, Lg/agd;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lg/bjj;->a()V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static openDebugMenu(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lg/bza;->l()Lg/bza;

    move-result-object v0

    iget-object v1, v0, Lg/bza;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lg/bza;->c:Lg/apq;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "MobileAds.initialize() must be called prior to opening debug menu."

    invoke-static {v3, v2}, Lg/ckd;->an(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v0, Lg/bza;->c:Lg/apq;

    new-instance v2, Lg/bpp;

    invoke-direct {v2, p0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2, p1}, Lg/apq;->zzn(Lg/bjq;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "Unable to open debug menu."

    invoke-static {p1, p0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static putPublisherFirstPartyIdEnabled(Z)Z
    .locals 7

    invoke-static {}, Lg/bza;->l()Lg/bza;

    move-result-object v0

    const-string v1, "Unable to "

    iget-object v2, v0, Lg/bza;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lg/bza;->c:Lg/apq;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v6, "MobileAds.initialize() must be called prior to enable/disable the publisher first-party ID."

    invoke-static {v6, v3}, Lg/ckd;->an(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v0, Lg/bza;->c:Lg/apq;

    invoke-interface {v0, p0}, Lg/apq;->zzj(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    return v5

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v0

    if-eqz p0, :cond_1

    const-string p0, "enable"

    goto :goto_1

    :cond_1
    const-string p0, "disable"

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " the publisher first-party ID."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v2

    return v4

    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static registerCustomTabsSession(Landroid/content/Context;Lg/eab;Ljava/lang/String;Lg/gwy;)Lg/bpr;
    .locals 3

    invoke-static {}, Lg/bza;->l()Lg/bza;

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lg/ckd;->aj(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbtx;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbzh;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "Internal error, query info generator is null."

    invoke-static {p0}, Lg/agd;->d(Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Lg/bpp;

    invoke-direct {v2, p0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lg/bpp;

    invoke-direct {p0, p1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lg/bpp;

    invoke-direct {p1, p3}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzbzh;->zze(Lg/bjq;Lg/bjq;Ljava/lang/String;Lg/bjq;)Lg/bjq;

    move-result-object p0

    invoke-static {p0}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/bpr;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const-string p1, "Unable to register custom tabs session. Error: "

    invoke-static {p1, p0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static registerRtbAdapter(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lg/bza;->l()Lg/bza;

    move-result-object v0

    iget-object v1, v0, Lg/bza;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lg/bza;->c:Lg/apq;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lg/apq;->zzh(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "Unable to register RtbAdapter"

    invoke-static {v0, p0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static registerWebView(Landroid/webkit/WebView;)V
    .locals 2

    invoke-static {}, Lg/bza;->l()Lg/bza;

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lg/ckd;->aj(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string p0, "The webview to be registered cannot be null."

    invoke-static {p0}, Lg/agd;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbtx;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbzh;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Internal error, query info generator is null."

    invoke-static {p0}, Lg/agd;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    new-instance v1, Lg/bpp;

    invoke-direct {v1, p0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzh;->zzj(Lg/bjq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setAppMuted(Z)V
    .locals 4

    invoke-static {}, Lg/bza;->l()Lg/bza;

    move-result-object v0

    iget-object v1, v0, Lg/bza;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lg/bza;->c:Lg/apq;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "MobileAds.initialize() must be called prior to setting app muted state."

    invoke-static {v3, v2}, Lg/ckd;->an(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v0, Lg/bza;->c:Lg/apq;

    invoke-interface {v0, p0}, Lg/apq;->zzp(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string v0, "Unable to set app mute state."

    invoke-static {v0, p0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static setAppVolume(F)V
    .locals 5

    invoke-static {}, Lg/bza;->l()Lg/bza;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmpg-float v1, p0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "The app volume must be a value between 0 and 1 inclusive."

    invoke-static {v4, v1}, Lg/ckd;->ar(Ljava/lang/String;Z)V

    iget-object v1, v0, Lg/bza;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v4, v0, Lg/bza;->c:Lg/apq;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "MobileAds.initialize() must be called prior to setting the app volume."

    invoke-static {v3, v2}, Lg/ckd;->an(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v0, Lg/bza;->c:Lg/apq;

    invoke-interface {v0, p0}, Lg/apq;->zzq(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_2
    const-string v0, "Unable to set app volume."

    invoke-static {v0, p0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static setPlugin(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lg/bza;->l()Lg/bza;

    move-result-object v0

    iget-object v1, v0, Lg/bza;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lg/bza;->c:Lg/apq;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "MobileAds.initialize() must be called prior to setting the plugin."

    invoke-static {v3, v2}, Lg/ckd;->an(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v0, Lg/bza;->c:Lg/apq;

    invoke-interface {v0, p0}, Lg/apq;->zzt(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string v0, "Unable to set plugin."

    invoke-static {v0, p0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static setRequestConfiguration(Lg/bah;)V
    .locals 3

    invoke-static {}, Lg/bza;->l()Lg/bza;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Null passed to setRequestConfiguration."

    invoke-static {v2, v1}, Lg/ckd;->ar(Ljava/lang/String;Z)V

    iget-object v1, v0, Lg/bza;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lg/bza;->h:Lg/bah;

    iput-object p0, v0, Lg/bza;->h:Lg/bah;

    iget-object v0, v0, Lg/bza;->c:Lg/apq;

    if-nez v0, :cond_1

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static startPreload(Landroid/content/Context;Ljava/util/List;Lg/mp;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lg/cdr;",
            ">;",
            "Lg/mp;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Lg/bza;->l()Lg/bza;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/cdr;

    iget-object v9, v7, Lg/cdr;->c:Lg/bme;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v7, v7, Lg/cdr;->b:Ljava/lang/String;

    const-string v10, "#"

    invoke-static {v9, v10, v7}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v3}, Lj$/util/Map$b;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v8, :cond_1

    const-string v5, "Preload configurations include duplicated ad unit IDs and ad format combinations"

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/16 v10, 0xf

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/cdr;

    iget-object v11, v9, Lg/cdr;->c:Lg/bme;

    sget-object v12, Lg/bza;->b:Ljava/util/HashSet;

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    iget-object v5, v9, Lg/cdr;->c:Lg/bme;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "PreloadConfiguration ad format is not supported:"

    invoke-virtual {v9, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_3
    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    new-instance v12, Lg/cve;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    invoke-static {v6, v11, v12}, Lj$/util/Map$b;->compute(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    iget v9, v9, Lg/cdr;->a:I

    if-le v9, v10, :cond_5

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Preload configurations\' buffer size exceeds the maximum limit 15 for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    if-gez v9, :cond_3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Preload configurations\' buffer size less than 0 for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    sget-object v7, Lg/bme;->APP_OPEN_AD:Lg/bme;

    sget-object v9, Lcom/google/android/gms/internal/ads/zzbcn;->zzeA:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v11, Lg/edt;->a:Lg/edt;

    iget-object v12, v11, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    sget-object v12, Lg/bme;->INTERSTITIAL:Lg/bme;

    sget-object v13, Lcom/google/android/gms/internal/ads/zzbcn;->zzey:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v14, v11, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    sget-object v14, Lg/bme;->REWARDED:Lg/bme;

    sget-object v15, Lcom/google/android/gms/internal/ads/zzbcn;->zzez:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v11, v11, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    new-instance v15, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v15, v7, v9}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v7, v12, v13}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v9, v14, v11}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/util/Map$Entry;

    aput-object v15, v12, v2

    aput-object v7, v12, v8

    const/4 v7, 0x2

    aput-object v9, v12, v7

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9, v11}, Ljava/util/HashMap;-><init>(I)V

    :goto_4
    if-ge v2, v11, :cond_8

    aget-object v13, v12, v2

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duplicate key: "

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/bme;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v2, v11, v3}, Lj$/util/Map$b;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-le v9, v13, :cond_9

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Preload configurations\' size exceeds the maximum limit "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_5

    :cond_a
    if-eqz v5, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/agd;->d(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    const/16 v4, 0xd

    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_7

    :cond_d
    sget-object v3, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    :goto_7
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    const-string v2, ""

    :cond_e
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v3

    invoke-static {v2, v3}, Lg/ckd;->ar(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    iget-object v2, v1, Lg/bza;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lg/bza;->j:Lg/dzg;

    if-nez v3, :cond_f

    sget-object v3, Lg/cbv;->a:Lg/cbv;

    iget-object v3, v3, Lg/cbv;->e:Lg/ph;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>()V

    invoke-virtual {v3, v0, v4}, Lg/ph;->k(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpc;)Lg/dzg;

    move-result-object v3

    iput-object v3, v1, Lg/bza;->j:Lg/dzg;

    goto :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_f
    :goto_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/cdr;

    iget-object v6, v5, Lg/cdr;->d:Lg/awn;

    iget-object v6, v6, Lg/awn;->a:Lg/qo;

    invoke-static {v0, v6}, Lg/ao;->ai(Landroid/content/Context;Lg/qo;)Lg/aeh;

    move-result-object v6

    iget-object v9, v6, Lg/aeh;->zzc:Landroid/os/Bundle;

    const-string v11, "is_sdk_preload"

    invoke-virtual {v9, v11, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v9, v5, Lg/cdr;->a:I

    const/4 v11, 0x5

    if-gtz v9, :cond_13

    iget-object v9, v5, Lg/cdr;->c:Lg/bme;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eq v9, v8, :cond_12

    if-eq v9, v7, :cond_11

    if-eq v9, v11, :cond_10

    const/4 v9, 0x1

    goto :goto_a

    :cond_10
    sget-object v9, Lcom/google/android/gms/internal/ads/zzbcn;->zzB:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v12, Lg/edt;->a:Lg/edt;

    iget-object v12, v12, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_a

    :cond_11
    sget-object v9, Lcom/google/android/gms/internal/ads/zzbcn;->zzD:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v12, Lg/edt;->a:Lg/edt;

    iget-object v12, v12, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_a

    :cond_12
    sget-object v9, Lcom/google/android/gms/internal/ads/zzbcn;->zzC:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v12, Lg/edt;->a:Lg/edt;

    iget-object v12, v12, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :cond_13
    :goto_a
    iget-object v12, v5, Lg/cdr;->c:Lg/bme;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-eq v12, v8, :cond_16

    if-eq v12, v7, :cond_15

    if-eq v12, v11, :cond_14

    const/4 v12, 0x1

    goto :goto_b

    :cond_14
    sget-object v12, Lcom/google/android/gms/internal/ads/zzbcn;->zzy:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v13, Lg/edt;->a:Lg/edt;

    iget-object v13, v13, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_b

    :cond_15
    sget-object v12, Lcom/google/android/gms/internal/ads/zzbcn;->zzA:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v13, Lg/edt;->a:Lg/edt;

    iget-object v13, v13, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_b

    :cond_16
    sget-object v12, Lcom/google/android/gms/internal/ads/zzbcn;->zzz:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v13, Lg/edt;->a:Lg/edt;

    iget-object v13, v13, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_b
    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget-object v13, v5, Lg/cdr;->c:Lg/bme;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    if-eq v13, v8, :cond_19

    if-eq v13, v7, :cond_18

    if-eq v13, v11, :cond_17

    const/4 v11, 0x1

    goto :goto_c

    :cond_17
    sget-object v11, Lcom/google/android/gms/internal/ads/zzbcn;->zzE:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v13, Lg/edt;->a:Lg/edt;

    iget-object v13, v13, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_c

    :cond_18
    sget-object v11, Lcom/google/android/gms/internal/ads/zzbcn;->zzG:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v13, Lg/edt;->a:Lg/edt;

    iget-object v13, v13, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_c

    :cond_19
    sget-object v11, Lcom/google/android/gms/internal/ads/zzbcn;->zzF:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v13, Lg/edt;->a:Lg/edt;

    iget-object v13, v13, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_c
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-instance v11, Lg/ghd;

    iget-object v12, v5, Lg/cdr;->b:Ljava/lang/String;

    iget-object v5, v5, Lg/cdr;->c:Lg/bme;

    invoke-virtual {v5}, Lg/bme;->c()I

    move-result v5

    invoke-direct {v11, v12, v5, v6, v9}, Lg/ghd;-><init>(Ljava/lang/String;ILg/aeh;I)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_9

    :cond_1a
    :try_start_1
    iget-object v0, v1, Lg/bza;->j:Lg/dzg;

    new-instance v1, Lg/cbl;

    const-string v4, "com.google.android.gms.ads.internal.client.IAdPreloadCallback"

    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzayd;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3, v1}, Lg/dzg;->zzi(Ljava/util/List;Lg/aik;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS_CACHE:Lcom/google/android/gms/common/api/Status;

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "Unable to start preload."

    invoke-static {v1, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS_CACHE:Lcom/google/android/gms/common/api/Status;

    monitor-exit v2

    return-void

    :goto_d
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

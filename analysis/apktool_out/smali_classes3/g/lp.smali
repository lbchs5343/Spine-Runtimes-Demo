.class public Lg/lp;
.super Lg/feo;
.source "SourceFile"


# virtual methods
.method public final a()Landroid/webkit/CookieManager;
    .locals 4

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v1, v0, Lg/ti;->z:Lg/esy;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    const-string v3, "Failed to obtain CookieManager."

    invoke-static {v3, v1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v3, "ApiLevelUtil.getCookieManager"

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzbzz;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v2
.end method

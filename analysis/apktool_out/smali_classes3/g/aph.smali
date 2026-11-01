.class public final Lg/aph;
.super Lg/cgp;
.source "SourceFile"


# virtual methods
.method public getAdSizes()[Lg/gin;
    .locals 1

    iget-object v0, p0, Lg/cgp;->a:Lg/ctl;

    iget-object v0, v0, Lg/ctl;->a:Ljava/lang/Object;

    check-cast v0, [Lg/gin;

    return-object v0
.end method

.method public getAppEventListener()Lg/eus;
    .locals 1

    iget-object v0, p0, Lg/cgp;->a:Lg/ctl;

    iget-object v0, v0, Lg/ctl;->i:Ljava/lang/Object;

    check-cast v0, Lg/eus;

    return-object v0
.end method

.method public getVideoController()Lg/hl;
    .locals 1

    iget-object v0, p0, Lg/cgp;->a:Lg/ctl;

    iget-object v0, v0, Lg/ctl;->c:Ljava/lang/Object;

    check-cast v0, Lg/hl;

    return-object v0
.end method

.method public getVideoOptions()Lg/cxt;
    .locals 1

    iget-object v0, p0, Lg/cgp;->a:Lg/ctl;

    iget-object v0, v0, Lg/ctl;->b:Ljava/lang/Object;

    check-cast v0, Lg/cxt;

    return-object v0
.end method

.method public varargs setAdSizes([Lg/gin;)V
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lg/cgp;->a:Lg/ctl;

    invoke-virtual {v0, p1}, Lg/ctl;->o([Lg/gin;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The supported ad sizes must contain at least one valid ad size."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAppEventListener(Lg/eus;)V
    .locals 1

    iget-object v0, p0, Lg/cgp;->a:Lg/ctl;

    invoke-virtual {v0, p1}, Lg/ctl;->s(Lg/eus;)V

    return-void
.end method

.method public setManualImpressionsEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lg/cgp;->a:Lg/ctl;

    iput-boolean p1, v0, Lg/ctl;->f:Z

    :try_start_0
    iget-object v0, v0, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v0, Lg/deq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lg/deq;->zzN(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public setVideoOptions(Lg/cxt;)V
    .locals 2

    iget-object v0, p0, Lg/cgp;->a:Lg/ctl;

    iput-object p1, v0, Lg/ctl;->b:Ljava/lang/Object;

    :try_start_0
    iget-object v0, v0, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v0, Lg/deq;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lg/cpm;

    invoke-direct {v1, p1}, Lg/cpm;-><init>(Lg/cxt;)V

    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lg/deq;->zzU(Lg/cpm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    return-void

    :goto_1
    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

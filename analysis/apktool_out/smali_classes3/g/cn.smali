.class public final Lg/cn;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/ImageView$ScaleType;

.field public b:Z

.field public c:Lg/evf;

.field public d:Lg/fxr;

.field public e:Z

.field public f:Lg/eie;


# virtual methods
.method public final declared-synchronized g(Lg/eie;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lg/cn;->f:Lg/eie;

    iget-boolean v0, p0, Lg/cn;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/cn;->a:Landroid/widget/ImageView$ScaleType;

    iget-object p1, p1, Lg/eie;->g:Ljava/lang/Object;

    check-cast p1, Lg/dii;

    iget-object p1, p1, Lg/dii;->b:Lcom/google/android/gms/internal/ads/zzbgc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    :try_start_1
    new-instance v1, Lg/bpp;

    invoke-direct {v1, v0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzbgc;->zzdy(Lg/bjq;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "Unable to call setMediaViewImageScaleType on delegate"

    invoke-static {v0, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public getMediaContent()Lg/fxr;
    .locals 1

    iget-object v0, p0, Lg/cn;->d:Lg/fxr;

    return-object v0
.end method

.method public setImageScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/cn;->b:Z

    iput-object p1, p0, Lg/cn;->a:Landroid/widget/ImageView$ScaleType;

    iget-object v0, p0, Lg/cn;->f:Lg/eie;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/dii;

    iget-object v0, v0, Lg/dii;->b:Lcom/google/android/gms/internal/ads/zzbgc;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    new-instance v1, Lg/bpp;

    invoke-direct {v1, p1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbgc;->zzdy(Lg/bjq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Unable to call setMediaViewImageScaleType on delegate"

    invoke-static {v0, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMediaContent(Lg/fxr;)V
    .locals 4

    const-string v0, ""

    const/4 v1, 0x1

    iput-boolean v1, p0, Lg/cn;->e:Z

    iput-object p1, p0, Lg/cn;->d:Lg/fxr;

    iget-object v1, p0, Lg/cn;->c:Lg/evf;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lg/evf;->f:Ljava/lang/Object;

    check-cast v1, Lg/dii;

    invoke-virtual {v1, p1}, Lg/dii;->d(Lg/fxr;)V

    :cond_0
    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    :try_start_0
    move-object v1, p1

    check-cast v1, Lg/clr;

    iget-object v1, v1, Lg/clr;->b:Lcom/google/android/gms/internal/ads/zzbgs;

    if-eqz v1, :cond_4

    move-object v2, p1

    check-cast v2, Lg/clr;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    :try_start_1
    iget-object v2, v2, Lg/clr;->a:Lcom/google/android/gms/internal/ads/zzbfv;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbfv;->zzl()Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {v0, v2}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    new-instance p1, Lg/bpp;

    invoke-direct {p1, p0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzbgs;->zzs(Lg/bjq;)Z

    move-result p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_2
    check-cast p1, Lg/clr;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object p1, p1, Lg/clr;->a:Lcom/google/android/gms/internal/ads/zzbfv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfv;->zzk()Z

    move-result v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    :try_start_4
    invoke-static {v0, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v3, :cond_3

    new-instance p1, Lg/bpp;

    invoke-direct {p1, p0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzbgs;->zzr(Lg/bjq;)Z

    move-result p1

    :goto_2
    if-nez p1, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_3
    return-void

    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-static {v0, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

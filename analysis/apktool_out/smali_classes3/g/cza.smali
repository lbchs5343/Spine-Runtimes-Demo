.class public final Lg/cza;
.super Lg/nl;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lg/ctl;

.field public final g:Ljava/lang/Object;

.field public h:Lg/nl;


# direct methods
.method public constructor <init>(Lg/ctl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cza;->f:Lg/ctl;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cza;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lg/cza;->f:Lg/ctl;

    iget-object v1, v0, Lg/ctl;->c:Ljava/lang/Object;

    check-cast v1, Lg/hl;

    iget-object v0, v0, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v0, Lg/deq;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lg/deq;->zzl()Lg/cbz;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "#007 Could not call remote method."

    invoke-static {v3, v0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Lg/hl;->c(Lg/cbz;)V

    iget-object v0, p0, Lg/cza;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lg/cza;->h:Lg/nl;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lg/nl;->a()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lg/cza;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/cza;->h:Lg/nl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lg/nl;->b()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lg/cza;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/cza;->h:Lg/nl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lg/nl;->c()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d(Lg/bfi;)V
    .locals 4

    iget-object v0, p0, Lg/cza;->f:Lg/ctl;

    iget-object v1, v0, Lg/ctl;->c:Ljava/lang/Object;

    check-cast v1, Lg/hl;

    iget-object v0, v0, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v0, Lg/deq;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lg/deq;->zzl()Lg/cbz;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "#007 Could not call remote method."

    invoke-static {v3, v0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Lg/hl;->c(Lg/cbz;)V

    iget-object v0, p0, Lg/cza;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lg/cza;->h:Lg/nl;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lg/nl;->d(Lg/bfi;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lg/cza;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/cza;->h:Lg/nl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lg/nl;->e()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onAdClicked()V
    .locals 2

    iget-object v0, p0, Lg/cza;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/cza;->h:Lg/nl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lg/nl;->onAdClicked()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

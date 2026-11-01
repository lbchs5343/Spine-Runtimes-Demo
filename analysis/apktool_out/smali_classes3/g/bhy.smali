.class public final Lg/bhy;
.super Lg/cro;
.source "SourceFile"


# virtual methods
.method public final f(Lg/alw;)Lg/fwe;
    .locals 2

    sget-object v0, Lg/fwe;->a:Lg/fwe;

    monitor-enter p1

    :try_start_0
    iget-object v1, p1, Lg/ail;->g:Lg/fwe;

    if-eq v1, v0, :cond_0

    iput-object v0, p1, Lg/ail;->g:Lg/fwe;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object v1

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g(Lg/alw;Lg/fwe;Lg/fwe;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lg/ail;->g:Lg/fwe;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lg/ail;->g:Lg/fwe;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final h(Lg/alw;)Lg/cye;
    .locals 2

    sget-object v0, Lg/cye;->a:Lg/cye;

    monitor-enter p1

    :try_start_0
    iget-object v1, p1, Lg/ail;->e:Lg/cye;

    if-eq v1, v0, :cond_0

    iput-object v0, p1, Lg/ail;->e:Lg/cye;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object v1

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final i(Lg/ail;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lg/ail;->f:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lg/ail;->f:Ljava/lang/Object;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final j(Lg/cye;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lg/cye;->b:Ljava/lang/Thread;

    return-void
.end method

.method public final k(Lg/cye;Lg/cye;)V
    .locals 0

    iput-object p2, p1, Lg/cye;->c:Lg/cye;

    return-void
.end method

.method public final l(Lg/ail;Lg/cye;Lg/cye;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lg/ail;->e:Lg/cye;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lg/ail;->e:Lg/cye;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

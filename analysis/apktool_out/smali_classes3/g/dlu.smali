.class public final Lg/dlu;
.super Lg/cux;
.source "SourceFile"


# virtual methods
.method public final f(Lg/afp;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lg/afp;->f:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lg/afp;->f:Ljava/lang/Object;

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

.method public final g(Lg/afp;Lg/dcl;Lg/dcl;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lg/afp;->g:Lg/dcl;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lg/afp;->g:Lg/dcl;

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

.method public final h(Lg/fds;Lg/fds;)V
    .locals 0

    iput-object p2, p1, Lg/fds;->c:Lg/fds;

    return-void
.end method

.method public final i(Lg/afp;Lg/fds;Lg/fds;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lg/afp;->e:Lg/fds;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lg/afp;->e:Lg/fds;

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

.method public final j(Lg/fds;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lg/fds;->b:Ljava/lang/Thread;

    return-void
.end method

.class public final Lg/btc;
.super Lg/buj;
.source "SourceFile"


# virtual methods
.method public final a(Lg/aoh;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lg/aoh;->b:Ljava/lang/Thread;

    return-void
.end method

.method public final b(Lg/aoh;Lg/aoh;)V
    .locals 0

    iput-object p2, p1, Lg/aoh;->c:Lg/aoh;

    return-void
.end method

.method public final c(Lg/zi;Lg/aoh;Lg/aoh;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lg/zi;->e:Lg/aoh;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lg/zi;->e:Lg/aoh;

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final d(Lg/zi;Lg/fxt;Lg/fxt;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lg/zi;->g:Lg/fxt;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lg/zi;->g:Lg/fxt;

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final e(Lg/zi;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lg/zi;->f:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lg/zi;->f:Ljava/lang/Object;

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

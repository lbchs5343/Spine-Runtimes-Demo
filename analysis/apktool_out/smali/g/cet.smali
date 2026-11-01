.class public Lg/cet;
.super Landroidx/lifecycle/a;
.source "SourceFile"


# virtual methods
.method public final aa(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/a;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/a;->f:Ljava/lang/Object;

    sget-object v2, Landroidx/lifecycle/a;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/a;->f:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lg/dav;->d()Lg/dav;

    move-result-object p1

    iget-object v0, p0, Landroidx/lifecycle/a;->i:Lg/byd;

    invoke-virtual {p1, v0}, Lg/dav;->e(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public q(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "setValue"

    invoke-static {v0}, Landroidx/lifecycle/a;->l(Ljava/lang/String;)V

    iget v0, p0, Landroidx/lifecycle/a;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/lifecycle/a;->k:I

    iput-object p1, p0, Landroidx/lifecycle/a;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a;->s(Lg/bbq;)V

    return-void
.end method

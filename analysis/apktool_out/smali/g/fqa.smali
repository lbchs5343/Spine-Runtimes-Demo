.class public abstract Lg/fqa;
.super Ljava/lang/Object;


# direct methods
.method public static declared-synchronized a()Lg/cad;
    .locals 3

    const-class v0, Lg/fqa;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lms/bz/bd/c/Pgl/n0;->e()Lms/bz/bd/c/Pgl/m0;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lg/cad;

    invoke-direct {v2, v1}, Lg/cad;-><init>(Lms/bz/bd/c/Pgl/m0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return-object v2

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v0, Lg/fqa;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lms/bz/bd/c/Pgl/n0;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

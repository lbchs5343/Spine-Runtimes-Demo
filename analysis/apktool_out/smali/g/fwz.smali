.class public final Lg/fwz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static a:Lg/fwz;


# instance fields
.field public b:J

.field public c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public d:Ljava/util/HashSet;

.field public e:Lg/ato;


# virtual methods
.method public final f(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lg/fwz;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lg/fwz;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lg/fwz;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lg/fwz;->b:J

    sget-object v2, Lg/eca;->a:Lg/fzn;

    iget-object v2, v2, Lg/fzn;->i:Ljava/lang/Object;

    check-cast v2, Lg/fur;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2, p2, p1}, Lg/fur;->dq(Ljava/lang/Throwable;Ljava/lang/Thread;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    nop

    :cond_2
    :goto_0
    if-nez v3, :cond_3

    invoke-virtual {p0, p1, p2}, Lg/fwz;->f(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    :try_start_2
    sget-object v2, Lg/eca;->a:Lg/fzn;

    iget-object v2, v2, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {p2}, Lg/cux;->x(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    :try_start_4
    sget-object v4, Lg/eca;->c:Landroid/content/Context;

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    iget-object v2, p0, Lg/fwz;->e:Lg/ato;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v0, v1, p1, p2}, Lg/ato;->b(JLjava/lang/Thread;Ljava/lang/Throwable;)V

    const-string v0, "end dispose "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_5
    invoke-virtual {p0, p1, p2}, Lg/fwz;->f(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    :try_start_5
    sget-object v0, Lg/eca;->c:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-virtual {p0, p1, p2}, Lg/fwz;->f(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :catchall_3
    move-exception v0

    invoke-virtual {p0, p1, p2}, Lg/fwz;->f(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    throw v0
.end method

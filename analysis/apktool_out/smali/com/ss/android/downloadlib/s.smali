.class public Lcom/ss/android/downloadlib/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/s$dq;
    }
.end annotation


# instance fields
.field private d:Ljava/util/concurrent/ExecutorService;

.field private dq:Ljava/util/concurrent/ExecutorService;

.field private ox:Ljava/util/concurrent/ScheduledExecutorService;

.field private p:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/android/downloadlib/s$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/downloadlib/s;-><init>()V

    return-void
.end method

.method public static dq()Lcom/ss/android/downloadlib/s;
    .locals 1

    invoke-static {}, Lcom/ss/android/downloadlib/s$dq;->dq()Lcom/ss/android/downloadlib/s;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d()Ljava/util/concurrent/ExecutorService;
    .locals 11

    const-string v0, "-CPUThreadPool"

    iget-object v1, p0, Lcom/ss/android/downloadlib/s;->dq:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1

    const-class v1, Lcom/ss/android/downloadlib/s;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/ss/android/downloadlib/s;->dq:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_0

    new-instance v3, Lcom/bytedance/sdk/component/o/p/p;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v9}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v10, Lcom/ss/android/socialbase/downloader/ia/dq;

    const-class v2, Lcom/ss/android/downloadlib/o;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/ss/android/socialbase/downloader/ia/dq;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const-wide/16 v6, 0x1e

    invoke-direct/range {v3 .. v10}, Lcom/bytedance/sdk/component/o/p/p;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, p0, Lcom/ss/android/downloadlib/s;->dq:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/ss/android/downloadlib/s;->dq:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public d(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/downloadlib/s;->d(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public d(Ljava/lang/Runnable;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/mn/mp;->d()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/s;->ox()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/downloadlib/s;->dq(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public dq(Ljava/lang/Runnable;J)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/s;->p()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(Ljava/lang/Runnable;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/mn/mp;->d()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/s;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public iw()V
    .locals 1

    new-instance v0, Lcom/ss/android/downloadlib/s$1;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/s$1;-><init>(Lcom/ss/android/downloadlib/s;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/s;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ox()Ljava/util/concurrent/ExecutorService;
    .locals 11

    const-string v0, "-IOThreadPool"

    iget-object v1, p0, Lcom/ss/android/downloadlib/s;->d:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1

    const-class v1, Lcom/ss/android/downloadlib/s;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/ss/android/downloadlib/s;->d:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_0

    new-instance v3, Lcom/bytedance/sdk/component/o/p/p;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v9}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v10, Lcom/ss/android/socialbase/downloader/ia/dq;

    const-class v2, Lcom/ss/android/downloadlib/o;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/ss/android/socialbase/downloader/ia/dq;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const-wide/16 v6, 0x1e

    invoke-direct/range {v3 .. v10}, Lcom/bytedance/sdk/component/o/p/p;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, p0, Lcom/ss/android/downloadlib/s;->d:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/ss/android/downloadlib/s;->d:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public ox(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/s;->s()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public p()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 5

    const-string v0, "-ScheduledThreadPool"

    iget-object v1, p0, Lcom/ss/android/downloadlib/s;->ox:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_1

    const-class v1, Lcom/ss/android/downloadlib/s;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/ss/android/downloadlib/s;->ox:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v2, :cond_0

    new-instance v2, Lcom/bytedance/sdk/component/o/p/s;

    new-instance v3, Lcom/ss/android/socialbase/downloader/ia/dq;

    const-class v4, Lcom/ss/android/downloadlib/o;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/ss/android/socialbase/downloader/ia/dq;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {v2, v0, v3}, Lcom/bytedance/sdk/component/o/p/s;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v2, p0, Lcom/ss/android/downloadlib/s;->ox:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/ss/android/downloadlib/s;->ox:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public s()Ljava/util/concurrent/ExecutorService;
    .locals 11

    const-string v0, "-InstallFinishCheckCPUThreadPool"

    iget-object v1, p0, Lcom/ss/android/downloadlib/s;->p:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1

    const-class v1, Lcom/ss/android/downloadlib/s;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/ss/android/downloadlib/s;->p:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_0

    new-instance v3, Lcom/bytedance/sdk/component/o/p/p;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v9}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v10, Lcom/ss/android/socialbase/downloader/ia/dq;

    const-class v2, Lcom/ss/android/downloadlib/o;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/ss/android/socialbase/downloader/ia/dq;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x5

    const v5, 0x7fffffff

    const-wide/16 v6, 0x1e

    invoke-direct/range {v3 .. v10}, Lcom/bytedance/sdk/component/o/p/p;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, p0, Lcom/ss/android/downloadlib/s;->p:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/ss/android/downloadlib/s;->p:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

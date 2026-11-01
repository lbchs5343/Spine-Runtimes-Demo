.class public Lcom/ss/android/socialbase/downloader/impls/s;
.super Lcom/ss/android/socialbase/downloader/impls/dq;


# static fields
.field private static d:Lcom/ss/android/socialbase/downloader/ia/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/dq;-><init>()V

    new-instance v0, Lcom/ss/android/socialbase/downloader/ia/p;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/ia/p;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/impls/s;->d:Lcom/ss/android/socialbase/downloader/ia/p;

    return-void
.end method

.method public static ox(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->fw()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    :cond_0
    return-void
.end method

.method public static p(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->fw()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static s(Ljava/util/List;)Ljava/lang/Runnable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->fw()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    instance-of v2, v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v2, :cond_3

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    instance-of v4, v3, Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUnstartedTask() error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DefaultDownloadEngine"

    invoke-static {v1, p0}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object v0
.end method


# virtual methods
.method public d(I)V
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/s;->d:Lcom/ss/android/socialbase/downloader/ia/p;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/ia/p;->ox(I)V

    return-void
.end method

.method public dq()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/s;->d:Lcom/ss/android/socialbase/downloader/ia/p;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/ia/p;->dq()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public dq(IJ)V
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/s;->d:Lcom/ss/android/socialbase/downloader/ia/p;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/ia/p;->dq(IJ)V

    return-void
.end method

.method public dq(ILcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "start doDownload for task : "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadTask"

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/ss/android/socialbase/downloader/ia/ox;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/dq;->dq:Lcom/ss/android/socialbase/downloader/ia/ia;

    invoke-direct {p1, p2, v0}, Lcom/ss/android/socialbase/downloader/ia/ox;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Landroid/os/Handler;)V

    sget-object p2, Lcom/ss/android/socialbase/downloader/impls/s;->d:Lcom/ss/android/socialbase/downloader/ia/p;

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/ia/p;->dq(Lcom/ss/android/socialbase/downloader/ia/ox;)V

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/ia/ox;)V
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/s;->d:Lcom/ss/android/socialbase/downloader/ia/p;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/ia/p;->d(Lcom/ss/android/socialbase/downloader/ia/ox;)V

    return-void
.end method

.method public dq(I)Z
    .locals 2

    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/s;->d:Lcom/ss/android/socialbase/downloader/ia/p;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/ia/p;->dq(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/dq;->p(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isDownloading(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/s;->d(I)V

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public ox(I)Lcom/ss/android/socialbase/downloader/ia/ox;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/s;->d:Lcom/ss/android/socialbase/downloader/ia/p;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/ia/p;->d(I)Lcom/ss/android/socialbase/downloader/ia/ox;

    move-result-object p1

    return-object p1
.end method

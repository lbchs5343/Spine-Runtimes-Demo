.class public Lcom/ss/android/socialbase/downloader/s/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/s/d;


# instance fields
.field private final d:I

.field private final dq:Ljava/io/InputStream;

.field private f:I

.field private final fw:Ljava/lang/Runnable;

.field private ia:Lcom/ss/android/socialbase/downloader/iw/dq;

.field private volatile ig:Z

.field private iw:Lcom/ss/android/socialbase/downloader/iw/dq;

.field private volatile jy:Ljava/util/concurrent/Future;

.field private kk:Lcom/ss/android/socialbase/downloader/iw/dq;

.field private mn:Lcom/ss/android/socialbase/downloader/iw/dq;

.field private volatile mp:Z

.field private no:Lcom/ss/android/socialbase/downloader/iw/dq;

.field private o:Lcom/ss/android/socialbase/downloader/iw/dq;

.field private final ox:I

.field private final p:Ljava/lang/Object;

.field private volatile q:Ljava/lang/Throwable;

.field private final s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/s/dq;->p:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/s/dq;->s:Ljava/lang/Object;

    new-instance v0, Lcom/ss/android/socialbase/downloader/s/dq$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/s/dq$1;-><init>(Lcom/ss/android/socialbase/downloader/s/dq;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/s/dq;->fw:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/s/dq;->dq:Ljava/io/InputStream;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/s/dq;->d:I

    if-gtz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x40

    if-le p3, p1, :cond_1

    const/16 p3, 0x40

    :cond_1
    :goto_0
    iput p3, p0, Lcom/ss/android/socialbase/downloader/s/dq;->ox:I

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/s/dq;->ox()V

    return-void
.end method

.method public static synthetic d(Lcom/ss/android/socialbase/downloader/s/dq;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/s/dq;->dq:Ljava/io/InputStream;

    return-object p0
.end method

.method private d(Lcom/ss/android/socialbase/downloader/iw/dq;)V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/s/dq;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/s/dq;->mn:Lcom/ss/android/socialbase/downloader/iw/dq;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/s/dq;->mn:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/s/dq;->iw:Lcom/ss/android/socialbase/downloader/iw/dq;

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/s/dq;->p:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput-object p1, v1, Lcom/ss/android/socialbase/downloader/iw/dq;->p:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/s/dq;->mn:Lcom/ss/android/socialbase/downloader/iw/dq;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/downloader/s/dq;)Lcom/ss/android/socialbase/downloader/iw/dq;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/iw/f;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/s/dq;->p()Lcom/ss/android/socialbase/downloader/iw/dq;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/downloader/s/dq;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/s/dq;->q:Ljava/lang/Throwable;

    return-object p1
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/downloader/s/dq;Lcom/ss/android/socialbase/downloader/iw/dq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/s/dq;->ox(Lcom/ss/android/socialbase/downloader/iw/dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/downloader/s/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/s/dq;->mp:Z

    return p1
.end method

.method private iw()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/s/dq;->q:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/iw/f;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x42c

    const-string v2, "async reader closed!"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    const-string v1, "async_read"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x42d

    const-string v2, "async reader terminated!"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static synthetic ox(Lcom/ss/android/socialbase/downloader/s/dq;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/s/dq;->s:Ljava/lang/Object;

    return-object p0
.end method

.method private ox()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->fw()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/s/dq;->fw:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/s/dq;->jy:Ljava/util/concurrent/Future;

    return-void
.end method

.method private ox(Lcom/ss/android/socialbase/downloader/iw/dq;)V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/s/dq;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/s/dq;->o:Lcom/ss/android/socialbase/downloader/iw/dq;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/s/dq;->o:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/s/dq;->kk:Lcom/ss/android/socialbase/downloader/iw/dq;

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/s/dq;->s:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput-object p1, v1, Lcom/ss/android/socialbase/downloader/iw/dq;->p:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/s/dq;->o:Lcom/ss/android/socialbase/downloader/iw/dq;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private p()Lcom/ss/android/socialbase/downloader/iw/dq;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/iw/f;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/s/dq;->ia:Lcom/ss/android/socialbase/downloader/iw/dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/s/dq;->ig:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/iw/dq;->p:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/s/dq;->ia:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object v1, v0, Lcom/ss/android/socialbase/downloader/iw/dq;->p:Lcom/ss/android/socialbase/downloader/iw/dq;

    return-object v0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/iw/f;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/iw/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/s/dq;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/s/dq;->ig:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/s/dq;->iw:Lcom/ss/android/socialbase/downloader/iw/dq;

    if-nez v2, :cond_2

    iget v3, p0, Lcom/ss/android/socialbase/downloader/s/dq;->f:I

    iget v4, p0, Lcom/ss/android/socialbase/downloader/s/dq;->ox:I

    if-ge v3, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ss/android/socialbase/downloader/s/dq;->f:I

    new-instance v1, Lcom/ss/android/socialbase/downloader/iw/dq;

    iget v2, p0, Lcom/ss/android/socialbase/downloader/s/dq;->d:I

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/iw/dq;-><init>(I)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/s/dq;->p:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/s/dq;->ig:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/s/dq;->iw:Lcom/ss/android/socialbase/downloader/iw/dq;

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/ss/android/socialbase/downloader/iw/f;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/iw/f;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v3, v2, Lcom/ss/android/socialbase/downloader/iw/dq;->p:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/s/dq;->ia:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/s/dq;->mn:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/s/dq;->iw:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object v1, v2, Lcom/ss/android/socialbase/downloader/iw/dq;->p:Lcom/ss/android/socialbase/downloader/iw/dq;

    monitor-exit v0

    return-object v2

    :cond_5
    new-instance v1, Lcom/ss/android/socialbase/downloader/iw/f;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/iw/f;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private s()Lcom/ss/android/socialbase/downloader/iw/dq;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/s/dq;->no:Lcom/ss/android/socialbase/downloader/iw/dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/iw/dq;->p:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/s/dq;->no:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object v1, v0, Lcom/ss/android/socialbase/downloader/iw/dq;->p:Lcom/ss/android/socialbase/downloader/iw/dq;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/s/dq;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/s/dq;->kk:Lcom/ss/android/socialbase/downloader/iw/dq;

    if-nez v2, :cond_3

    :cond_1
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/s/dq;->mp:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/s/dq;->iw()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/s/dq;->s:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/s/dq;->kk:Lcom/ss/android/socialbase/downloader/iw/dq;

    if-eqz v2, :cond_1

    :cond_3
    iget-object v3, v2, Lcom/ss/android/socialbase/downloader/iw/dq;->p:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/s/dq;->no:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/s/dq;->o:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/s/dq;->kk:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object v1, v2, Lcom/ss/android/socialbase/downloader/iw/dq;->p:Lcom/ss/android/socialbase/downloader/iw/dq;

    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/s/dq;->p:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/s/dq;->ig:Z

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/s/dq;->p:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/s/dq;->jy:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/s/dq;->jy:Ljava/util/concurrent/Future;

    :cond_0
    return-void

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public dq()Lcom/ss/android/socialbase/downloader/iw/dq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/s/dq;->s()Lcom/ss/android/socialbase/downloader/iw/dq;

    move-result-object v0

    return-object v0
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/iw/dq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/s/dq;->d(Lcom/ss/android/socialbase/downloader/iw/dq;)V

    return-void
.end method

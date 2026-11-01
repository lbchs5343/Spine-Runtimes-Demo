.class Lcom/ss/android/socialbase/downloader/d/iw$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/d/iw;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/socialbase/downloader/d/iw;

.field final synthetic dq:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/d/iw;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/d/iw$2;->d:Lcom/ss/android/socialbase/downloader/d/iw;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/d/iw$2;->dq:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/iw$2;->d:Lcom/ss/android/socialbase/downloader/d/iw;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/d/iw;->d(Lcom/ss/android/socialbase/downloader/d/iw;)Lcom/ss/android/socialbase/downloader/d/d;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/iw$2;->d:Lcom/ss/android/socialbase/downloader/d/iw;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/d/iw;->ox(Lcom/ss/android/socialbase/downloader/d/iw;)Lcom/ss/android/socialbase/downloader/d/ox;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/iw$2;->d:Lcom/ss/android/socialbase/downloader/d/iw;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/d/iw;->ox(Lcom/ss/android/socialbase/downloader/d/iw;)Lcom/ss/android/socialbase/downloader/d/ox;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/d/iw$2;->d:Lcom/ss/android/socialbase/downloader/d/iw;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/d/iw;->d(Lcom/ss/android/socialbase/downloader/d/iw;)Lcom/ss/android/socialbase/downloader/d/d;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ss/android/socialbase/downloader/d/ox;->dq(Lcom/ss/android/socialbase/downloader/d/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/iw$2;->d:Lcom/ss/android/socialbase/downloader/d/iw;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/d/iw;->p(Lcom/ss/android/socialbase/downloader/d/iw;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/iw$2;->dq:Landroid/os/IBinder;

    new-instance v2, Lcom/ss/android/socialbase/downloader/d/iw$2$1;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/downloader/d/iw$2$1;-><init>(Lcom/ss/android/socialbase/downloader/d/iw$2;)V

    :goto_1
    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_6

    :goto_2
    :try_start_3
    const-string v2, "SqlDownloadCacheAidlWra"

    const-string v3, "onServiceConnected fail"

    invoke-static {v2, v3, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/iw$2;->d:Lcom/ss/android/socialbase/downloader/d/iw;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/d/iw;->dq(Lcom/ss/android/socialbase/downloader/d/iw;)Lcom/ss/android/socialbase/downloader/downloader/ox$dq$dq;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/iw$2;->d:Lcom/ss/android/socialbase/downloader/d/iw;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/d/iw;->dq(Lcom/ss/android/socialbase/downloader/d/iw;)Lcom/ss/android/socialbase/downloader/downloader/ox$dq$dq;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/ox$dq$dq;->dq()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    goto :goto_5

    :cond_1
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/iw$2;->d:Lcom/ss/android/socialbase/downloader/d/iw;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/d/iw;->p(Lcom/ss/android/socialbase/downloader/d/iw;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/iw$2;->dq:Landroid/os/IBinder;

    new-instance v2, Lcom/ss/android/socialbase/downloader/d/iw$2$1;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/downloader/d/iw$2$1;-><init>(Lcom/ss/android/socialbase/downloader/d/iw$2;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    :goto_4
    :try_start_6
    monitor-exit p0

    return-void

    :goto_5
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/d/iw$2;->d:Lcom/ss/android/socialbase/downloader/d/iw;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/d/iw;->p(Lcom/ss/android/socialbase/downloader/d/iw;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/d/iw$2;->dq:Landroid/os/IBinder;

    new-instance v3, Lcom/ss/android/socialbase/downloader/d/iw$2$1;

    invoke-direct {v3, p0}, Lcom/ss/android/socialbase/downloader/d/iw$2$1;-><init>(Lcom/ss/android/socialbase/downloader/d/iw$2;)V

    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    :try_start_8
    throw v1

    :goto_6
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0
.end method

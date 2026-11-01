.class public Lcom/ss/android/socialbase/downloader/impls/q;
.super Lcom/ss/android/socialbase/downloader/downloader/dq;

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final s:Ljava/lang/String; = "q"


# instance fields
.field private ia:I

.field private iw:Lcom/ss/android/socialbase/downloader/downloader/kk;

.field private mn:Lcom/ss/android/socialbase/downloader/downloader/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/dq;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/impls/q;->ia:I

    return-void
.end method

.method private mn()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/dq;->dq:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/dq;->dq:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/dq;->dq:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->n()Lcom/ss/android/socialbase/downloader/impls/dq;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/DownloadTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/q;->iw:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)Lcom/ss/android/socialbase/downloader/model/dq;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/ss/android/socialbase/downloader/downloader/kk;->dq(Lcom/ss/android/socialbase/downloader/model/dq;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    sget-object v1, Lcom/ss/android/socialbase/downloader/impls/q;->s:Ljava/lang/String;

    const-string v2, "resumePendingTaskForIndependent failed"

    invoke-static {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/q;->s:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tryDownload aidlService == null:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/q;->iw:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/q;->iw:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ob()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p0}, Lcom/ss/android/socialbase/downloader/impls/q;->startService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/q;->mn()V

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/q;->iw:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)Lcom/ss/android/socialbase/downloader/model/dq;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->dq(Lcom/ss/android/socialbase/downloader/model/dq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "fix_downloader_db_sigbus"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "fix_sigbus_downloader_db"

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;Z)V

    :cond_0
    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/q;->s:Ljava/lang/String;

    const-string v0, "onBind IndependentDownloadBinder"

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/ss/android/socialbase/downloader/impls/mp;

    invoke-direct {p1}, Lcom/ss/android/socialbase/downloader/impls/mp;-><init>()V

    return-object p1
.end method

.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/q;->iw:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iput p1, p0, Lcom/ss/android/socialbase/downloader/impls/q;->ia:I

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->ig(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/downloader/q;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/q;->mn:Lcom/ss/android/socialbase/downloader/downloader/q;

    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/q;->iw:Lcom/ss/android/socialbase/downloader/downloader/kk;

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/q;->mn:Lcom/ss/android/socialbase/downloader/downloader/q;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/downloader/q;->ia()V

    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/q;->s:Ljava/lang/String;

    const-string v0, "onServiceConnected "

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/downloader/kk$dq;->dq(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/downloader/kk;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/q;->iw:Lcom/ss/android/socialbase/downloader/downloader/kk;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/q;->mn:Lcom/ss/android/socialbase/downloader/downloader/q;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/q;->dq(Landroid/os/IBinder;)V

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onServiceConnected aidlService!=null"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/q;->iw:Lcom/ss/android/socialbase/downloader/downloader/kk;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " pendingTasks.size:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/dq;->dq:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/q;->iw:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/p;->dq()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->d()V

    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/downloader/dq;->d:Z

    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/downloader/dq;->p:Z

    iget p1, p0, Lcom/ss/android/socialbase/downloader/impls/q;->ia:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    :try_start_0
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/q;->iw:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->ig(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/q;->iw:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/q;->mn()V

    :cond_3
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/q;->s:Ljava/lang/String;

    const-string v0, "onServiceDisconnected "

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/q;->iw:Lcom/ss/android/socialbase/downloader/downloader/kk;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/downloader/dq;->d:Z

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/q;->mn:Lcom/ss/android/socialbase/downloader/downloader/q;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/downloader/q;->ia()V

    :cond_0
    return-void
.end method

.method public ox(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/p;->dq()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/p;->dq(IZ)V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->n()Lcom/ss/android/socialbase/downloader/impls/dq;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startService()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/q;->iw:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ob()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/ss/android/socialbase/downloader/impls/q;->startService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public startService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/q;->s:Ljava/lang/String;

    const-string v1, "bindService"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fix_downloader_db_sigbus"

    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v2

    const-string v3, "fix_sigbus_downloader_db"

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public stopService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 2

    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/q;->s:Ljava/lang/String;

    const-string v1, "stopService"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/dq;->d:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

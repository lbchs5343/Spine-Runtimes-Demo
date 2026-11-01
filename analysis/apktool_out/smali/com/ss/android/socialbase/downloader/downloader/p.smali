.class public Lcom/ss/android/socialbase/downloader/downloader/p;
.super Ljava/lang/Object;


# static fields
.field private static volatile dq:Lcom/ss/android/socialbase/downloader/downloader/p;


# instance fields
.field private volatile d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private ox:Landroid/os/Handler;

.field private volatile p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/ji;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/p;->d:Landroid/util/SparseArray;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/p;->ox:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/p;->p:Ljava/util/List;

    return-void
.end method

.method private d(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)Lcom/ss/android/socialbase/downloader/downloader/mp;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedIndependentProcess()Z

    move-result v0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/kk/iw;->ox()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-static {}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/downloader/downloader/p;->dq(I)I

    move-result v2

    const/4 v4, 0x0

    if-ltz v2, :cond_7

    if-eq v2, v0, :cond_7

    if-ne v2, v3, :cond_5

    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object p1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(I)V

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object p1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/ss/android/socialbase/downloader/downloader/mp;->ia(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_0

    :catchall_0
    nop

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result p1

    if-le p1, v3, :cond_7

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object p1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/ss/android/socialbase/downloader/downloader/mp;->kk(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v5

    invoke-interface {v2, v5, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(ILjava/util/List;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object p1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(I)V

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object p1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/ss/android/socialbase/downloader/downloader/mp;->kk(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v5

    invoke-interface {v2, v5, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(ILjava/util/List;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->setNeedDelayForCacheSync(Z)V

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object p1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {p1, v3, v2}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_1
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    if-ne v0, v3, :cond_8

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/ss/android/socialbase/downloader/downloader/p;->dq(IZ)V

    if-ne v0, v3, :cond_9

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :goto_3
    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object p1

    return-object p1
.end method

.method public static dq()Lcom/ss/android/socialbase/downloader/downloader/p;
    .locals 2

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/p;->dq:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-nez v0, :cond_0

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/p;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/p;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/p;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/p;->dq:Lcom/ss/android/socialbase/downloader/downloader/p;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/p;->dq:Lcom/ss/android/socialbase/downloader/downloader/p;

    return-object v0
.end method

.method private dq(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {p3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {p3, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method


# virtual methods
.method public cd(I)Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->gh(I)Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized d(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/p;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p1, -0x1

    return p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/p;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/p;->dq(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->ia(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :cond_1
    invoke-direct {p0, v1, v2, v0}, Lcom/ss/android/socialbase/downloader/downloader/p;->dq(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/p;->p:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/p;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/iw;Z)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/iw;Z)V

    return-void
.end method

.method public declared-synchronized d(IZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/p;->d:Landroid/util/SparseArray;

    if-eqz p2, :cond_0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d(Lcom/ss/android/socialbase/downloader/depend/ji;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/p;->p:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/p;->p:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/p;->p:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Lcom/ss/android/socialbase/downloader/depend/no;)V
    .locals 0

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/ox;->d(Lcom/ss/android/socialbase/downloader/depend/no;)V

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->d(Ljava/util/List;)V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->d(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public dq(I)I
    .locals 2

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->uh()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/kk/iw;->ox()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->mn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->mp(I)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->d(I)I

    move-result p1

    return p1
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public dq(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method

.method public dq(IJ)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(IJ)V

    return-void
.end method

.method public dq(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/iw;Z)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v2, v1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v1, p1

    :goto_0
    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/mp;->d(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/iw;Z)V

    return-void
.end method

.method public dq(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/iw;ZZ)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/iw;ZZ)V

    return-void
.end method

.method public dq(ILcom/ss/android/socialbase/downloader/depend/kx;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(ILcom/ss/android/socialbase/downloader/depend/kx;)V

    return-void
.end method

.method public dq(IZ)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/p;->d(IZ)V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->uh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/kk/iw;->ox()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->mn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/mp;->ox(IZ)V

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ox()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/kk/iw;->ox()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq()Z

    move-result p2

    if-nez p2, :cond_1

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ob()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/ss/android/socialbase/downloader/impls/DownloadHandleService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.ss.android.downloader.action.PROCESS_NOTIFY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_download_id"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ob()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/depend/ji;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/kk/iw;->ox()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/p;->p:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/p;->p:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/p;->p:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/depend/no;)V
    .locals 0

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(Lcom/ss/android/socialbase/downloader/depend/no;)V

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->d(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/wp;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v3, 0x3eb

    const-string v4, "tryDownload but getDownloadHandler failed"

    invoke-direct {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, v1, v2, p1}, Lcom/ss/android/socialbase/downloader/p/dq;->dq(Lcom/ss/android/socialbase/downloader/depend/wp;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->isNeedDelayForCacheSync()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/p;->ox:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/socialbase/downloader/downloader/p$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p$1;-><init>(Lcom/ss/android/socialbase/downloader/downloader/p;Lcom/ss/android/socialbase/downloader/downloader/mp;Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(Ljava/util/List;)V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-interface {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    return p1
.end method

.method public f(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->no(I)V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->no(I)V

    :cond_1
    return-void
.end method

.method public fw(I)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/p;->d(IZ)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->startService()V

    return-void
.end method

.method public ia(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->s(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public ig(I)Lcom/ss/android/socialbase/downloader/depend/kx;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->fw(I)Lcom/ss/android/socialbase/downloader/depend/kx;

    move-result-object p1

    return-object p1
.end method

.method public iw(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->ox(I)V

    return-void
.end method

.method public iw()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->s()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public jy(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->ig(I)Z

    move-result p1

    return p1
.end method

.method public kk(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->iw(I)I

    move-result p1

    return p1
.end method

.method public mn(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->p(I)V

    return-void
.end method

.method public mp(I)Lcom/ss/android/socialbase/downloader/depend/op;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->cd(I)Lcom/ss/android/socialbase/downloader/depend/op;

    move-result-object p1

    return-object p1
.end method

.method public no(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->ia(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public o(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->mn(I)Z

    move-result p1

    return p1
.end method

.method public ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->dq(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/kk/iw;->ox()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object p1

    return-object p1
.end method

.method public ox(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->ox(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->ox(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :cond_1
    invoke-direct {p0, v1, v2, v0}, Lcom/ss/android/socialbase/downloader/downloader/p;->dq(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public ox()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq()V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq()V

    :cond_1
    return-void
.end method

.method public ox(IZ)V
    .locals 3

    invoke-static {}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/high16 v0, 0x800000

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/dq;->dq(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(IZ)V

    :cond_0
    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(IZ)V

    return-void

    :cond_1
    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(IZ)V

    :cond_2
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(IZ)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(IZ)V

    :cond_5
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object p2

    const/4 v0, 0x2

    invoke-interface {p2, v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(II)V

    return-void
.end method

.method public p(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :cond_1
    invoke-direct {p0, v1, v2, v0}, Lcom/ss/android/socialbase/downloader/downloader/p;->dq(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public p(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(I)V

    return-void
.end method

.method public p(IZ)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/mp;->d(IZ)V

    return-void
.end method

.method public p()Z
    .locals 1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->l()Z

    move-result v0

    return v0
.end method

.method public q(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->o(I)V

    return-void
.end method

.method public s()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->p()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/downloader/mp;->p()Ljava/util/List;

    move-result-object v2

    :cond_1
    invoke-direct {p0, v1, v2, v0}, Lcom/ss/android/socialbase/downloader/downloader/p;->dq(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public s(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->s(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->s(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :cond_1
    invoke-direct {p0, v1, v2, v0}, Lcom/ss/android/socialbase/downloader/downloader/p;->dq(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public s(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->ox(I)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->d(I)Z

    move-result p1

    return p1
.end method

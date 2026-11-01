.class Lcom/ss/android/socialbase/downloader/impls/dq$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/dq;->d(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:I

.field final synthetic ox:Lcom/ss/android/socialbase/downloader/impls/dq;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/impls/dq;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/dq$3;->ox:Lcom/ss/android/socialbase/downloader/impls/dq;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/impls/dq$3;->dq:I

    iput-boolean p3, p0, Lcom/ss/android/socialbase/downloader/impls/dq$3;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/dq$3;->ox:Lcom/ss/android/socialbase/downloader/impls/dq;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/impls/dq$3;->dq:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/dq;->ox(I)Lcom/ss/android/socialbase/downloader/ia/ox;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/dq$3;->ox:Lcom/ss/android/socialbase/downloader/impls/dq;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/impls/dq$3;->dq:I

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/dq;->dq(Lcom/ss/android/socialbase/downloader/impls/dq;I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/iw;->d:Lcom/ss/android/socialbase/downloader/constants/iw;

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadListeners(Lcom/ss/android/socialbase/downloader/constants/iw;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_2

    monitor-enter v0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    if-eqz v3, :cond_0

    invoke-interface {v3, v1}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onCanceled(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/dq$3;->ox:Lcom/ss/android/socialbase/downloader/impls/dq;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/impls/dq$3;->dq:I

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/impls/dq$3;->d:Z

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/impls/dq;->dq(Lcom/ss/android/socialbase/downloader/impls/dq;IZ)V

    return-void
.end method

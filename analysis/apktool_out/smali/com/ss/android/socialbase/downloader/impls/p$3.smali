.class Lcom/ss/android/socialbase/downloader/impls/p$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/p;->mn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/util/SparseArray;

.field final synthetic dq:Landroid/util/SparseArray;

.field final synthetic ox:Lcom/ss/android/socialbase/downloader/impls/p;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/impls/p;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/p$3;->ox:Lcom/ss/android/socialbase/downloader/impls/p;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/p$3;->dq:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/p$3;->d:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 6

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p$3;->ox:Lcom/ss/android/socialbase/downloader/impls/p;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/p;->dq(Lcom/ss/android/socialbase/downloader/impls/p;)Lcom/ss/android/socialbase/downloader/impls/no;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/p$3;->ox:Lcom/ss/android/socialbase/downloader/impls/p;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/p;->dq(Lcom/ss/android/socialbase/downloader/impls/p;)Lcom/ss/android/socialbase/downloader/impls/no;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/impls/no;->dq()Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/p$3;->dq:Landroid/util/SparseArray;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/p$3;->dq:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/p$3;->dq:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/impls/p$3;->dq:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/p$3;->ox:Lcom/ss/android/socialbase/downloader/impls/p;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/p;->dq(Lcom/ss/android/socialbase/downloader/impls/p;)Lcom/ss/android/socialbase/downloader/impls/no;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/impls/no;->iw()Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/p$3;->d:Landroid/util/SparseArray;

    if-eqz v2, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/p$3;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/p$3;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/p$3;->d:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p$3;->ox:Lcom/ss/android/socialbase/downloader/impls/p;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/p;->d(Lcom/ss/android/socialbase/downloader/impls/p;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p$3;->ox:Lcom/ss/android/socialbase/downloader/impls/p;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/p;->ia()V

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/p;->ox:Lcom/ss/android/socialbase/downloader/constants/p;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(Lcom/ss/android/socialbase/downloader/constants/p;)V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

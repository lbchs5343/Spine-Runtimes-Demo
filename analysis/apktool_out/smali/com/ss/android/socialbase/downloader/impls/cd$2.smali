.class Lcom/ss/android/socialbase/downloader/impls/cd$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/cd;->d(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:I

.field final synthetic ox:Lcom/ss/android/socialbase/downloader/impls/cd;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/impls/cd;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/cd$2;->ox:Lcom/ss/android/socialbase/downloader/impls/cd;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/impls/cd$2;->dq:I

    iput-boolean p3, p0, Lcom/ss/android/socialbase/downloader/impls/cd$2;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/cd$2;->ox:Lcom/ss/android/socialbase/downloader/impls/cd;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/cd;->ox(Lcom/ss/android/socialbase/downloader/impls/cd;)I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/cd$2;->ox:Lcom/ss/android/socialbase/downloader/impls/cd;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/cd;->p(Lcom/ss/android/socialbase/downloader/impls/cd;)I

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v0, "RetryScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doScheduleAllTaskRetry: mWaitingRetryTasksCount = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/cd$2;->ox:Lcom/ss/android/socialbase/downloader/impls/cd;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/impls/cd;->ox(Lcom/ss/android/socialbase/downloader/impls/cd;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/cd$2;->ox:Lcom/ss/android/socialbase/downloader/impls/cd;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/cd;->s(Lcom/ss/android/socialbase/downloader/impls/cd;)Landroid/util/SparseArray;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/cd$2;->ox:Lcom/ss/android/socialbase/downloader/impls/cd;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/cd;->s(Lcom/ss/android/socialbase/downloader/impls/cd;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v9, v1, :cond_4

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/cd$2;->ox:Lcom/ss/android/socialbase/downloader/impls/cd;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/cd;->s(Lcom/ss/android/socialbase/downloader/impls/cd;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/impls/cd$dq;

    if-eqz v1, :cond_3

    iget v4, p0, Lcom/ss/android/socialbase/downloader/impls/cd$2;->dq:I

    iget-boolean v6, p0, Lcom/ss/android/socialbase/downloader/impls/cd$2;->d:Z

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/impls/cd$dq;->dq(JIIZ)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/ss/android/socialbase/downloader/impls/cd$2;->d:Z

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/impls/cd$dq;->ox()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/impls/cd$dq;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/cd$2;->ox:Lcom/ss/android/socialbase/downloader/impls/cd;

    iget v1, v1, Lcom/ss/android/socialbase/downloader/impls/cd$dq;->dq:I

    invoke-static {v2, v1, v5, v8}, Lcom/ss/android/socialbase/downloader/impls/cd;->dq(Lcom/ss/android/socialbase/downloader/impls/cd;IIZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_3
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_5
    :goto_4
    return-void
.end method

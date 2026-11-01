.class Lcom/ss/android/socialbase/downloader/d/iw$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/d/iw;->dq(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/d/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/util/SparseArray;

.field final synthetic dq:Landroid/util/SparseArray;

.field final synthetic ox:Lcom/ss/android/socialbase/downloader/d/p;

.field final synthetic p:Lcom/ss/android/socialbase/downloader/d/iw;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/d/iw;Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/d/p;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/d/iw$4;->p:Lcom/ss/android/socialbase/downloader/d/iw;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/d/iw$4;->dq:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/d/iw$4;->d:Landroid/util/SparseArray;

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/d/iw$4;->ox:Lcom/ss/android/socialbase/downloader/d/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/iw$4;->p:Lcom/ss/android/socialbase/downloader/d/iw;

    new-instance v1, Lcom/ss/android/socialbase/downloader/d/iw$4$1;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/d/iw$4$1;-><init>(Lcom/ss/android/socialbase/downloader/d/iw$4;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/d/iw;->dq(Lcom/ss/android/socialbase/downloader/d/d;)V

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/iw$4;->p:Lcom/ss/android/socialbase/downloader/d/iw;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/d/iw;->p(Lcom/ss/android/socialbase/downloader/d/iw;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v1, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/d/iw$4;->p:Lcom/ss/android/socialbase/downloader/d/iw;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/d/iw;->ia(Lcom/ss/android/socialbase/downloader/d/iw;)Ljava/util/concurrent/Future;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/iw$4;->p:Lcom/ss/android/socialbase/downloader/d/iw;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/d/iw;->dq()V

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/iw$4;->ox:Lcom/ss/android/socialbase/downloader/d/p;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/d/p;->dq()V

    :cond_1
    return-void
.end method

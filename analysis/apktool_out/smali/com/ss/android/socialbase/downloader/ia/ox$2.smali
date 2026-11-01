.class Lcom/ss/android/socialbase/downloader/ia/ox$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/fw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;J)Lcom/ss/android/socialbase/downloader/exception/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/socialbase/downloader/ia/ox;

.field final synthetic dq:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/ia/ox;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox$2;->d:Lcom/ss/android/socialbase/downloader/ia/ox;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/ia/ox$2;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox$2;->d:Lcom/ss/android/socialbase/downloader/ia/ox;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox$2;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox$2;->d:Lcom/ss/android/socialbase/downloader/ia/ox;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Lcom/ss/android/socialbase/downloader/ia/ox;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

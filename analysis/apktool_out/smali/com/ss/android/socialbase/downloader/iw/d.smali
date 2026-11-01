.class Lcom/ss/android/socialbase/downloader/iw/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/iw/ox;
.implements Lcom/ss/android/socialbase/downloader/iw/p;
.implements Lcom/ss/android/socialbase/downloader/iw/s;


# instance fields
.field private final d:I

.field private final dq:I

.field private ia:Lcom/ss/android/socialbase/downloader/iw/dq;

.field private iw:Lcom/ss/android/socialbase/downloader/iw/dq;

.field private kk:Lcom/ss/android/socialbase/downloader/iw/dq;

.field private mn:Lcom/ss/android/socialbase/downloader/iw/dq;

.field private no:I

.field private volatile o:Z

.field private final ox:Ljava/lang/Object;

.field private final p:Ljava/lang/Object;

.field private s:Lcom/ss/android/socialbase/downloader/iw/dq;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/d;->ox:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/d;->p:Ljava/lang/Object;

    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    const/16 p1, 0x40

    :cond_0
    const/16 v0, 0x2000

    if-ge p2, v0, :cond_1

    const/16 p2, 0x2000

    :cond_1
    iput p1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->dq:I

    iput p2, p0, Lcom/ss/android/socialbase/downloader/iw/d;->d:I

    return-void
.end method


# virtual methods
.method public d()Lcom/ss/android/socialbase/downloader/iw/dq;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/iw/f;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/d;->ox:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->o:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->s:Lcom/ss/android/socialbase/downloader/iw/dq;

    if-nez v1, :cond_2

    iget v1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->no:I

    iget v2, p0, Lcom/ss/android/socialbase/downloader/iw/d;->dq:I

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->no:I

    new-instance v1, Lcom/ss/android/socialbase/downloader/iw/dq;

    iget v2, p0, Lcom/ss/android/socialbase/downloader/iw/d;->d:I

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/iw/dq;-><init>(I)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->ox:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->o:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->s:Lcom/ss/android/socialbase/downloader/iw/dq;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/ss/android/socialbase/downloader/iw/f;

    const-string v2, "obtain"

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/iw/f;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/iw/dq;->p:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/d;->s:Lcom/ss/android/socialbase/downloader/iw/dq;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/d;->iw:Lcom/ss/android/socialbase/downloader/iw/dq;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/iw/d;->iw:Lcom/ss/android/socialbase/downloader/iw/dq;

    :cond_3
    iput-object v3, v1, Lcom/ss/android/socialbase/downloader/iw/dq;->p:Lcom/ss/android/socialbase/downloader/iw/dq;

    monitor-exit v0

    return-object v1

    :cond_4
    new-instance v1, Lcom/ss/android/socialbase/downloader/iw/f;

    const-string v2, "obtain"

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/iw/f;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(Lcom/ss/android/socialbase/downloader/iw/dq;)V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/d;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->ia:Lcom/ss/android/socialbase/downloader/iw/dq;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->ia:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->mn:Lcom/ss/android/socialbase/downloader/iw/dq;

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->p:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput-object p1, v1, Lcom/ss/android/socialbase/downloader/iw/dq;->p:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->ia:Lcom/ss/android/socialbase/downloader/iw/dq;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dq()Lcom/ss/android/socialbase/downloader/iw/dq;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/iw/f;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/d;->kk:Lcom/ss/android/socialbase/downloader/iw/dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/iw/dq;->p:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/d;->kk:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object v1, v0, Lcom/ss/android/socialbase/downloader/iw/dq;->p:Lcom/ss/android/socialbase/downloader/iw/dq;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/d;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/d;->mn:Lcom/ss/android/socialbase/downloader/iw/dq;

    :goto_0
    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/iw/d;->o:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/d;->p:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/d;->mn:Lcom/ss/android/socialbase/downloader/iw/dq;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/ss/android/socialbase/downloader/iw/f;

    const-string v2, "read"

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/iw/f;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v3, v2, Lcom/ss/android/socialbase/downloader/iw/dq;->p:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/iw/d;->kk:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->ia:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->mn:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object v1, v2, Lcom/ss/android/socialbase/downloader/iw/dq;->p:Lcom/ss/android/socialbase/downloader/iw/dq;

    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/iw/dq;)V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/d;->ox:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->iw:Lcom/ss/android/socialbase/downloader/iw/dq;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->iw:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->s:Lcom/ss/android/socialbase/downloader/iw/dq;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput-object p1, v1, Lcom/ss/android/socialbase/downloader/iw/dq;->p:Lcom/ss/android/socialbase/downloader/iw/dq;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->iw:Lcom/ss/android/socialbase/downloader/iw/dq;

    :goto_0
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->ox:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ox()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/d;->o:Z

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/d;->ox:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->ox:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/d;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/d;->p:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.class public Lcom/ss/android/socialbase/downloader/ia/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/ia/iw;
.implements Ljava/lang/Runnable;


# static fields
.field private static final dq:Ljava/lang/String; = "ox"


# instance fields
.field private bl:Z

.field private c:J

.field private final cd:Lcom/ss/android/socialbase/downloader/downloader/ia;

.field private final ce:Lcom/ss/android/socialbase/downloader/mn/dq;

.field private d:Ljava/util/concurrent/Future;

.field private e:Lcom/ss/android/socialbase/downloader/network/mn;

.field private er:I

.field private f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field private fw:Lcom/ss/android/socialbase/downloader/downloader/ia;

.field private gh:Lcom/ss/android/socialbase/downloader/downloader/mn;

.field private h:Lcom/ss/android/socialbase/downloader/depend/cd;

.field private i:Lcom/ss/android/socialbase/downloader/downloader/gh;

.field private ia:Z

.field private ig:Z

.field private ir:Z

.field private final iw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/socialbase/downloader/ia/d;",
            ">;"
        }
    .end annotation
.end field

.field private volatile ji:I

.field private final jy:Lcom/ss/android/socialbase/downloader/downloader/o;

.field private volatile k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

.field private kk:Z

.field private kx:Lcom/ss/android/socialbase/downloader/depend/k;

.field private final le:Lcom/ss/android/socialbase/downloader/downloader/iw;

.field private volatile mn:Lcom/ss/android/socialbase/downloader/downloader/s;

.field private final mp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private n:Z

.field private no:Z

.field private o:Z

.field private op:Ljava/lang/String;

.field private final ox:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

.field private volatile p:Z

.field private volatile q:Lcom/ss/android/socialbase/downloader/constants/ia;

.field private final r:Lcom/ss/android/socialbase/downloader/downloader/mn;

.field private s:Ljava/util/concurrent/atomic/AtomicInteger;

.field private u:J

.field private volatile wn:Lcom/ss/android/socialbase/downloader/iw/no;

.field private wp:Lcom/ss/android/socialbase/downloader/network/kk;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->p:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->iw:Ljava/util/ArrayList;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->dq:Lcom/ss/android/socialbase/downloader/constants/ia;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    const/4 v1, 0x5

    iput v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ji:I

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->bl:Z

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->n:Z

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ir:Z

    iput v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->er:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wn:Lcom/ss/android/socialbase/downloader/iw/no;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getChunkStrategy()Lcom/ss/android/socialbase/downloader/downloader/ia;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->fw:Lcom/ss/android/socialbase/downloader/downloader/ia;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getChunkAdjustCalculator()Lcom/ss/android/socialbase/downloader/downloader/mn;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->gh:Lcom/ss/android/socialbase/downloader/downloader/mn;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getForbiddenHandler()Lcom/ss/android/socialbase/downloader/depend/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->kx:Lcom/ss/android/socialbase/downloader/depend/k;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDiskSpaceHandler()Lcom/ss/android/socialbase/downloader/depend/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->h:Lcom/ss/android/socialbase/downloader/depend/cd;

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)Lcom/ss/android/socialbase/downloader/downloader/gh;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->i:Lcom/ss/android/socialbase/downloader/downloader/gh;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ce:Lcom/ss/android/socialbase/downloader/mn/dq;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ce:Lcom/ss/android/socialbase/downloader/mn/dq;

    :goto_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->ia()V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->e()Lcom/ss/android/socialbase/downloader/downloader/o;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->er()Lcom/ss/android/socialbase/downloader/downloader/ia;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->cd:Lcom/ss/android/socialbase/downloader/downloader/ia;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->j()Lcom/ss/android/socialbase/downloader/downloader/mn;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->r:Lcom/ss/android/socialbase/downloader/downloader/mn;

    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/iw;

    invoke-direct {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/iw;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->mp:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private bl()Z
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isExpiredRedownload()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->kk:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v0

    if-le v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isChunkDowngradeRetryUsed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->o:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ig:Z

    if-nez v0, :cond_2

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method private c()V
    .locals 3

    sget-object v0, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clearCurrentDownloadData::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->p(I)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->mp(I)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->kk:Z

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->resetDataForEtagEndure(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private cd()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wp:Lcom/ss/android/socialbase/downloader/network/kk;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/kk;->p()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wp:Lcom/ss/android/socialbase/downloader/network/kk;

    :cond_0
    return-void
.end method

.method private ce()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->iw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/ia/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    return-void

    :goto_1
    sget-object v1, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cancelAllChunkRunnable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/util/List;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/ox;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Lcom/ss/android/socialbase/downloader/exception/kk;
        }
    .end annotation

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/network/dq/dq;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/ss/android/socialbase/downloader/network/dq/dq;->dq(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/dq/ox;

    move-result-object p3

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->e:Lcom/ss/android/socialbase/downloader/network/mn;

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p3, p4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setPreconnectLevel(I)V

    :cond_0
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->e:Lcom/ss/android/socialbase/downloader/network/mn;

    if-nez p3, :cond_2

    iget-boolean p3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->n:Z

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isHeadConnectionAvailable()Z

    move-result p3

    if-eqz p3, :cond_2

    :try_start_0
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ce:Lcom/ss/android/socialbase/downloader/mn/dq;

    const-string v0, "net_lib_strategy"

    invoke-virtual {p3, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result p3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ce:Lcom/ss/android/socialbase/downloader/mn/dq;

    const-string v1, "monitor_download_connect"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {p1, p2, p3, p4, v0}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/mn;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->e:Lcom/ss/android/socialbase/downloader/network/mn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->o(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setHeadConnectionException(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private dq(JLjava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/d;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->bl()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->kk:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result p3

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->fw:Lcom/ss/android/socialbase/downloader/downloader/ia;

    if-eqz p3, :cond_2

    invoke-interface {p3, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/ia;->dq(J)I

    move-result p3

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->cd:Lcom/ss/android/socialbase/downloader/downloader/ia;

    invoke-interface {p3, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/ia;->dq(J)I

    move-result p3

    :goto_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/no;->dq()Lcom/ss/android/socialbase/downloader/network/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/no;->d()Lcom/ss/android/socialbase/downloader/network/ig;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NetworkQuality is : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setNetworkQuality(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->gh:Lcom/ss/android/socialbase/downloader/downloader/mn;

    if-eqz v1, :cond_3

    invoke-interface {v1, p3, v0}, Lcom/ss/android/socialbase/downloader/downloader/mn;->dq(ILcom/ss/android/socialbase/downloader/network/ig;)I

    move-result p3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->r:Lcom/ss/android/socialbase/downloader/downloader/mn;

    invoke-interface {v1, p3, v0}, Lcom/ss/android/socialbase/downloader/downloader/mn;->dq(ILcom/ss/android/socialbase/downloader/network/ig;)I

    move-result p3

    :goto_1
    if-gtz p3, :cond_5

    :cond_4
    const/4 p3, 0x1

    :cond_5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/ox/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, " for "

    const-string v3, " contentLen:"

    const-string v4, "chunk count : "

    invoke-static {v4, v1, p2, v2, v3}, Lg/tn;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return p3
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)Lcom/ss/android/socialbase/downloader/downloader/gh;
    .locals 1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getRetryDelayTimeCalculator()Lcom/ss/android/socialbase/downloader/downloader/gh;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryDelayTimeArray()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/fw;

    invoke-direct {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/fw;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->nh()Lcom/ss/android/socialbase/downloader/downloader/gh;

    move-result-object p1

    return-object p1
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;J)Lcom/ss/android/socialbase/downloader/model/d;
    .locals 3

    new-instance v0, Lcom/ss/android/socialbase/downloader/model/d$dq;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/model/d$dq;-><init>(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/d$dq;->dq(I)Lcom/ss/android/socialbase/downloader/model/d$dq;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/model/d$dq;->dq(J)Lcom/ss/android/socialbase/downloader/model/d$dq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/model/d$dq;->s(J)Lcom/ss/android/socialbase/downloader/model/d$dq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/model/d$dq;->d(J)Lcom/ss/android/socialbase/downloader/model/d$dq;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/model/d$dq;->ox(J)Lcom/ss/android/socialbase/downloader/model/d$dq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/model/d$dq;->p(J)Lcom/ss/android/socialbase/downloader/model/d$dq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d$dq;->dq()Lcom/ss/android/socialbase/downloader/model/d;

    move-result-object p0

    return-object p0
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/model/d;I)Lcom/ss/android/socialbase/downloader/model/d;
    .locals 8

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/d;->ox(Z)J

    move-result-wide v2

    sget-object v4, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "reuseChunk retainLen:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " chunkIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->iw()Z

    move-result v4

    if-nez v4, :cond_1

    sget-wide v4, Lcom/ss/android/socialbase/downloader/constants/s;->iw:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedReuseChunkRunnable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v2

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/model/d;->dq(IJ)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/d;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v4, v3}, Lcom/ss/android/socialbase/downloader/downloader/o;->d(Lcom/ss/android/socialbase/downloader/model/d;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->iw()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->iw()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->mn()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->mn()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/d;

    if-eqz v3, :cond_4

    sget-object v4, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "check can checkUnCompletedChunk -- chunkIndex:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/d;->gh()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " currentOffset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/d;->q()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "  startOffset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/d;->ig()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " contentLen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/d;->fw()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/d;->gh()I

    move-result v4

    if-ltz v4, :cond_3

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/d;->kk()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/d;->ox()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move-object v1, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->q()J

    move-result-wide v2

    sget-object v4, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unComplete chunk "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->gh()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " curOffset:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " reuseChunk chunkIndex:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for subChunk:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->gh()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->no()I

    move-result v2

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->gh()I

    move-result v3

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->d()I

    move-result v4

    invoke-interface {p1, v2, v3, v4, p2}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(IIII)V

    invoke-virtual {v1, p2}, Lcom/ss/android/socialbase/downloader/model/d;->ox(I)V

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/model/d;->dq(Z)V

    :cond_6
    return-object v1
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/model/d;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/socialbase/downloader/model/d;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/ox;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtraHeaders()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->geteTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/util/List;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/model/d;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isExpiredRedownload()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ir:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastModified()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ss/android/socialbase/downloader/model/ox;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastModified()Ljava/lang/String;

    move-result-object v1

    const-string v2, "if-modified-since"

    invoke-direct {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/model/ox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/ss/android/socialbase/downloader/model/ox;

    const-string v1, "download-tc21-1-15"

    invoke-direct {v0, v1, v1}, Lcom/ss/android/socialbase/downloader/model/ox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dcache::add head IF_MODIFIED_SINCE="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastModified()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method private dq(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/d;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Ljava/util/List;J)V

    return-void

    :cond_0
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/16 v0, 0x409

    invoke-direct {p1, v0, p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method private dq(JI)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    int-to-long v4, v3

    div-long v4, v1, v4

    iget-object v6, v0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-wide v11, v8

    :goto_0
    if-ge v10, v3, :cond_1

    add-int/lit8 v13, v3, -0x1

    if-ne v10, v13, :cond_0

    move-wide v13, v8

    goto :goto_1

    :cond_0
    add-long v13, v11, v4

    const-wide/16 v15, 0x1

    sub-long/2addr v13, v15

    :goto_1
    new-instance v15, Lcom/ss/android/socialbase/downloader/model/d$dq;

    invoke-direct {v15, v6}, Lcom/ss/android/socialbase/downloader/model/d$dq;-><init>(I)V

    invoke-virtual {v15, v10}, Lcom/ss/android/socialbase/downloader/model/d$dq;->dq(I)Lcom/ss/android/socialbase/downloader/model/d$dq;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Lcom/ss/android/socialbase/downloader/model/d$dq;->dq(J)Lcom/ss/android/socialbase/downloader/model/d$dq;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Lcom/ss/android/socialbase/downloader/model/d$dq;->s(J)Lcom/ss/android/socialbase/downloader/model/d$dq;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Lcom/ss/android/socialbase/downloader/model/d$dq;->d(J)Lcom/ss/android/socialbase/downloader/model/d$dq;

    move-result-object v15

    invoke-virtual {v15, v13, v14}, Lcom/ss/android/socialbase/downloader/model/d$dq;->ox(J)Lcom/ss/android/socialbase/downloader/model/d$dq;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ss/android/socialbase/downloader/model/d$dq;->dq()Lcom/ss/android/socialbase/downloader/model/d;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v14, v0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v14, v13}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(Lcom/ss/android/socialbase/downloader/model/d;)V

    add-long/2addr v11, v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setChunkCount(I)V

    iget-object v4, v0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v4, v6, v3}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(II)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-direct {v0, v7, v1, v2}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Ljava/util/List;J)V

    return-void
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/downloader/ia/ox;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->er()V

    return-void
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/downloader/ia/ox;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Ljava/util/List;)V

    return-void
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/model/d;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/kk;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->q()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/model/d;->dq(J)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setChunkCount(I)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(II)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    new-instance v3, Lcom/ss/android/socialbase/downloader/downloader/s;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-object v8, p0

    move-object v7, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/ss/android/socialbase/downloader/downloader/s;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/kk;Lcom/ss/android/socialbase/downloader/model/d;Lcom/ss/android/socialbase/downloader/ia/iw;)V

    iput-object v3, v8, Lcom/ss/android/socialbase/downloader/ia/ox;->mn:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->r()V

    return-void
.end method

.method private dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/kk;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->p(I)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->mp(I)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->kk:Z

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->resetDataForEtagEndure(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/kk;

    invoke-direct {p1, p2}, Lcom/ss/android/socialbase/downloader/exception/kk;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private dq(Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/ox;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Lcom/ss/android/socialbase/downloader/exception/kk;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wp:Lcom/ss/android/socialbase/downloader/network/kk;

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/network/dq/dq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/network/dq/dq;->d(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/dq/p;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wp:Lcom/ss/android/socialbase/downloader/network/kk;

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Lcom/ss/android/socialbase/downloader/network/mn;)V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setPreconnectLevel(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wp:Lcom/ss/android/socialbase/downloader/network/kk;

    goto/16 :goto_7

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedDefaultHttpServiceBackUp()Z

    move-result v2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMaxBytes()I

    move-result v3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ce:Lcom/ss/android/socialbase/downloader/mn/dq;

    const-string v4, "net_lib_strategy"

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result v7

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ce:Lcom/ss/android/socialbase/downloader/mn/dq;

    const-string v4, "monitor_download_connect"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    iget-object v9, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_0
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    move-object v4, p1

    move-object v6, p2

    :try_start_1
    invoke-static/range {v2 .. v9}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(ZILjava/lang/String;Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/kk;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wp:Lcom/ss/android/socialbase/downloader/network/kk;
    :try_end_1
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Lcom/ss/android/socialbase/downloader/network/mn;)V

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    :goto_3
    move-object p1, v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    move-object v6, p2

    goto :goto_3

    :goto_4
    :try_start_2
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isExpiredRedownload()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->mn(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {v6}, Lcom/ss/android/socialbase/downloader/kk/iw;->ox(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p1, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "dcache=execepiton responseCode=304 lastModified not changed, use local file.. old cacheControl="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCacheControl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCacheControl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->kk(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_4

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p1

    const-string p2, "default_304_max_age"

    const/16 v0, 0x12c

    invoke-virtual {p1, p2, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p1

    int-to-long p1, p1

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object p1, v0

    goto :goto_a

    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long p1, p1, v3

    add-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCacheExpiredTime(J)V

    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/dq;

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->op:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/ss/android/socialbase/downloader/exception/dq;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->iw(Ljava/lang/Throwable;)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v0, ""

    if-eqz p2, :cond_6

    :try_start_3
    const-string p1, "http code 416"

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->s(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p1, "http code 412"

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    const-string p2, "CreateFirstConnection"

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_6
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wp:Lcom/ss/android/socialbase/downloader/network/kk;

    goto/16 :goto_2

    :goto_7
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wp:Lcom/ss/android/socialbase/downloader/network/kk;

    if-eqz p1, :cond_8

    :goto_8
    return-void

    :cond_8
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance p2, Ljava/io/IOException;

    const-string v0, "download can\'t continue, firstConnection is null"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3fe

    invoke-direct {p1, v0, p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :goto_9
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_a
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wp:Lcom/ss/android/socialbase/downloader/network/kk;

    invoke-virtual {p0, p2}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Lcom/ss/android/socialbase/downloader/network/mn;)V

    throw p1
.end method

.method private dq(Ljava/lang/String;Ljava/util/List;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/ox;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Lcom/ss/android/socialbase/downloader/exception/kk;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/ia/ox;->d(Ljava/lang/String;Ljava/util/List;J)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->e:Lcom/ss/android/socialbase/downloader/network/mn;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/mn;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->n:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->e:Lcom/ss/android/socialbase/downloader/network/mn;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->n:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Ljava/lang/String;Ljava/util/List;)V

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wp:Lcom/ss/android/socialbase/downloader/network/kk;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/mn;J)V

    :cond_2
    return-void
.end method

.method private dq(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/ia;->mn:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setForbiddenBackupUrls(Ljava/util/List;Z)V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->n()Lcom/ss/android/socialbase/downloader/impls/dq;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/impls/dq;->ig(I)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private dq(Ljava/util/List;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/d;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->f()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->q()J

    move-result-wide v1

    sub-long v1, p2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->f()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->q()J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    :goto_1
    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/model/d;->dq(J)V

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedReuseFirstConnection()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wp:Lcom/ss/android/socialbase/downloader/network/kk;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isHeadConnectionAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->n:Z

    if-eqz v1, :cond_4

    :cond_2
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->gh()I

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/ss/android/socialbase/downloader/ia/d;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wp:Lcom/ss/android/socialbase/downloader/network/kk;

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/ss/android/socialbase/downloader/ia/d;-><init>(Lcom/ss/android/socialbase/downloader/model/d;Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/network/kk;Lcom/ss/android/socialbase/downloader/ia/iw;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->iw:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->gh()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/ss/android/socialbase/downloader/ia/d;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-direct {v1, v0, v2, p0}, Lcom/ss/android/socialbase/downloader/ia/d;-><init>(Lcom/ss/android/socialbase/downloader/model/d;Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/ia/iw;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->iw:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/ss/android/socialbase/downloader/ia/d;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-direct {v1, v0, v2, p0}, Lcom/ss/android/socialbase/downloader/ia/d;-><init>(Lcom/ss/android/socialbase/downloader/model/d;Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/ia/iw;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->iw:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const/16 p1, 0x40

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/dq;->dq(I)Z

    move-result p1

    if-eqz p1, :cond_c

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->iw:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->iw:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ss/android/socialbase/downloader/ia/d;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->ox:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-ne v0, v1, :cond_6

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/ia/d;->d()V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->d:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-ne v0, v1, :cond_7

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/ia/d;->dq()V

    goto :goto_2

    :cond_7
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    :try_start_0
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/impls/s;->p(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_3
    if-eqz p2, :cond_a

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->le()Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p3, :cond_9

    goto/16 :goto_7

    :cond_9
    :try_start_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/impls/s;->s(Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p2

    goto :goto_3

    :cond_a
    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_10

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catchall_1
    :cond_b
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Future;

    if-eqz p2, :cond_b

    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez p3, :cond_b

    :try_start_3
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :cond_c
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->iw:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->iw:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ss/android/socialbase/downloader/ia/d;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->ox:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-ne v0, v1, :cond_d

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/ia/d;->d()V

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->d:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-ne v0, v1, :cond_e

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/ia/d;->dq()V

    goto :goto_6

    :cond_e
    invoke-static {p3}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->le()Z

    move-result p2

    if-eqz p2, :cond_11

    :catchall_2
    :cond_10
    :goto_7
    return-void

    :cond_11
    :try_start_4
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/impls/s;->ox(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 p3, 0x3fc

    invoke-direct {p2, p3, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method

.method private dq(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/16 v0, 0x19c

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->no:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->o:Z

    if-eqz p2, :cond_2

    :cond_1
    return v1

    :cond_2
    const/16 p2, 0xc9

    if-eq p1, p2, :cond_3

    const/16 p2, 0x1a0

    if-ne p1, p2, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long p3, p1, v2

    if-lez p3, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private e()Z
    .locals 5

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setTotalBytes(J)V

    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkCompletedByteValid: downloadInfo.getCurBytes() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",  downloadInfo.getTotalBytes() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isIgnoreDataVerify()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/d;->d:Lcom/ss/android/socialbase/downloader/constants/d;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setByteInvalidRetryStatus(Lcom/ss/android/socialbase/downloader/constants/d;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->reset()V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->p(I)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->mp(I)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    const/4 v0, 0x0

    return v0
.end method

.method private er()V
    .locals 2

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->le()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->n()Lcom/ss/android/socialbase/downloader/impls/dq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/dq;->ig(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private f()V
    .locals 7

    sget-object v0, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endDownloadRunnable::runStatus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->d:Lcom/ss/android/socialbase/downloader/constants/ia;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->ox:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->k()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    goto :goto_2

    :catch_0
    move-exception v1

    instance-of v4, v1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    check-cast v1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {v4, v1}, Lcom/ss/android/socialbase/downloader/downloader/iw;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    new-instance v5, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v6, 0x416

    invoke-direct {v5, v6, v1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/iw;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    :goto_1
    const/4 v1, 0x1

    const/4 v4, 0x1

    :goto_2
    if-nez v1, :cond_3

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->bl:Z

    sget-object v0, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    const-string v1, "jump to restart"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->mp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v0, :cond_5

    :try_start_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->n()Lcom/ss/android/socialbase/downloader/impls/dq;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/impls/dq;->dq(Lcom/ss/android/socialbase/downloader/ia/ox;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/wp;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    new-instance v4, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v5, "removeDownloadRunnable"

    invoke-static {v0, v5}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x3f6

    invoke-direct {v4, v5, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v3

    :cond_4
    invoke-static {v1, v2, v4, v3}, Lcom/ss/android/socialbase/downloader/p/dq;->dq(Lcom/ss/android/socialbase/downloader/depend/wp;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    :cond_5
    :goto_4
    return-void
.end method

.method private fw()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->e:Lcom/ss/android/socialbase/downloader/network/mn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/mn;->ox()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->e:Lcom/ss/android/socialbase/downloader/network/mn;

    :cond_0
    return-void
.end method

.method private gh()V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->fw()V

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->cd()V

    return-void
.end method

.method private h()J
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->i:Lcom/ss/android/socialbase/downloader/downloader/gh;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurRetryTimeInTotal()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalRetryCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/gh;->dq(II)J

    move-result-wide v0

    return-wide v0
.end method

.method private i()Z
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->ox:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->d:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private ia()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryCount()I

    move-result v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurRetryTime()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private ig()V
    .locals 17

    move-object/from16 v1, p0

    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/ia;->dq:Lcom/ss/android/socialbase/downloader/constants/ia;

    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateStartDownloadTime()V

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->resetRealStartDownloadTime()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstSpeedTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_1
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->o()V
    :try_end_1
    .catch Lcom/ss/android/socialbase/downloader/exception/dq; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v6, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "file exist "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/dq;->dq()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/dq;->dq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->op:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    iget-boolean v6, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->bl:Z

    if-nez v6, :cond_0

    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/downloader/iw;->d()V

    :cond_0
    iput-boolean v5, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->bl:Z

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->le()Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->f()V

    return-void

    :cond_1
    :try_start_3
    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->op:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isExpiredRedownload()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->p(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->ir:Z

    :cond_2
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->ir:Z

    if-nez v0, :cond_3

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->mp()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->f()V

    return-void

    :cond_3
    :goto_1
    :try_start_4
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->le()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_4

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->f()V

    return-void

    :cond_4
    :try_start_5
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->ir()V

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->ji()V

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->op()V

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object v8, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v8

    invoke-interface {v0, v8}, Lcom/ss/android/socialbase/downloader/downloader/o;->ox(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->u()V

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->q()Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v0, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    const-string v8, "downloadSegments return"

    invoke-static {v0, v8}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/ss/android/socialbase/downloader/exception/dq; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/ss/android/socialbase/downloader/exception/kk; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->gh()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->f()V

    return-void

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :catch_2
    move-exception v0

    goto/16 :goto_9

    :cond_5
    :try_start_7
    iget-object v8, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getConnectionUrl()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->le()Z

    move-result v9
    :try_end_7
    .catch Lcom/ss/android/socialbase/downloader/exception/dq; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/ss/android/socialbase/downloader/exception/kk; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v9, :cond_6

    :try_start_8
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->gh()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->f()V

    return-void

    :cond_6
    :try_start_9
    iget-boolean v9, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->kk:Z

    if-eqz v9, :cond_7

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v9}, Lcom/ss/android/socialbase/downloader/kk/iw;->s(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)J

    move-result-wide v9

    goto :goto_2

    :cond_7
    const-wide/16 v9, 0x0

    :goto_2
    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v11, v9, v10}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;J)Lcom/ss/android/socialbase/downloader/model/d;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Lcom/ss/android/socialbase/downloader/model/d;)Ljava/util/List;

    move-result-object v12

    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v12, v13}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/util/List;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v12, v13}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Ljava/util/List;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v13, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setPreconnectLevel(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13
    :try_end_9
    .catch Lcom/ss/android/socialbase/downloader/exception/dq; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/ss/android/socialbase/downloader/exception/kk; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-direct {v1, v8, v12, v9, v10}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Ljava/lang/String;Ljava/util/List;J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v5, v15, v13

    invoke-virtual {v9, v5, v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseAllConnectTime(J)V

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->le()Z

    move-result v5
    :try_end_b
    .catch Lcom/ss/android/socialbase/downloader/exception/dq; {:try_start_b .. :try_end_b} :catch_3
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lcom/ss/android/socialbase/downloader/exception/kk; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v5, :cond_8

    :try_start_c
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->gh()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->f()V

    return-void

    :cond_8
    :try_start_d
    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(J)V

    invoke-direct {v1, v5, v6, v0}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(JLjava/util/List;)I

    move-result v7

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->le()Z

    move-result v9
    :try_end_d
    .catch Lcom/ss/android/socialbase/downloader/exception/dq; {:try_start_d .. :try_end_d} :catch_3
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lcom/ss/android/socialbase/downloader/exception/kk; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v9, :cond_9

    :try_start_e
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->gh()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->f()V

    return-void

    :cond_9
    if-lez v7, :cond_12

    if-ne v7, v4, :cond_a

    const/4 v9, 0x1

    goto :goto_3

    :cond_a
    const/4 v9, 0x0

    :goto_3
    :try_start_f
    iput-boolean v9, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->ia:Z

    if-eqz v9, :cond_d

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->wp:Lcom/ss/android/socialbase/downloader/network/kk;
    :try_end_f
    .catch Lcom/ss/android/socialbase/downloader/exception/dq; {:try_start_f .. :try_end_f} :catch_3
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lcom/ss/android/socialbase/downloader/exception/kk; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-nez v0, :cond_b

    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-direct {v1, v8, v12}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Ljava/lang/String;Ljava/util/List;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v13

    invoke-virtual {v0, v5, v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseAllConnectTime(J)V

    goto :goto_4

    :catchall_2
    move-exception v0

    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v13

    invoke-virtual {v5, v6, v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseAllConnectTime(J)V

    throw v0

    :cond_b
    :goto_4
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->le()Z

    move-result v0
    :try_end_11
    .catch Lcom/ss/android/socialbase/downloader/exception/dq; {:try_start_11 .. :try_end_11} :catch_3
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Lcom/ss/android/socialbase/downloader/exception/kk; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v0, :cond_c

    :try_start_12
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->gh()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->f()V

    return-void

    :cond_c
    :try_start_13
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstSpeedTime(J)V

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->jy()V

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->wp:Lcom/ss/android/socialbase/downloader/network/kk;

    invoke-direct {v1, v11, v8, v0}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Lcom/ss/android/socialbase/downloader/model/d;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/kk;)V

    goto :goto_5

    :cond_d
    iget-object v8, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedReuseFirstConnection()Z

    move-result v8

    if-nez v8, :cond_e

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->cd()V

    :cond_e
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->le()Z

    move-result v8
    :try_end_13
    .catch Lcom/ss/android/socialbase/downloader/exception/dq; {:try_start_13 .. :try_end_13} :catch_3
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Lcom/ss/android/socialbase/downloader/exception/kk; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-eqz v8, :cond_f

    :try_start_14
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->gh()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->f()V

    return-void

    :cond_f
    :try_start_15
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->jy()V

    iget-object v8, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v2

    invoke-virtual {v8, v11, v12}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstSpeedTime(J)V

    iget-boolean v8, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->kk:Z

    if-eqz v8, :cond_10

    invoke-direct {v1, v7, v0}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(ILjava/util/List;)V

    goto :goto_5

    :cond_10
    invoke-direct {v1, v5, v6, v7}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(JI)V
    :try_end_15
    .catch Lcom/ss/android/socialbase/downloader/exception/dq; {:try_start_15 .. :try_end_15} :catch_3
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Lcom/ss/android/socialbase/downloader/exception/kk; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :cond_11
    :goto_5
    :try_start_16
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->gh()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_b

    :cond_12
    :try_start_17
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v5, "chunkCount is 0"

    const/16 v6, 0x408

    invoke-direct {v0, v6, v5}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v13

    invoke-virtual {v5, v6, v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseAllConnectTime(J)V

    throw v0
    :try_end_17
    .catch Lcom/ss/android/socialbase/downloader/exception/dq; {:try_start_17 .. :try_end_17} :catch_3
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Lcom/ss/android/socialbase/downloader/exception/kk; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :goto_6
    :try_start_18
    sget-object v2, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "downloadInner: throwable =  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v3, Lcom/ss/android/socialbase/downloader/constants/ia;->d:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-eq v2, v3, :cond_11

    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v3, 0x415

    invoke-direct {v2, v3, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/ia/ox;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    goto :goto_5

    :catchall_4
    move-exception v0

    goto/16 :goto_c

    :goto_7
    sget-object v5, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "downloadInner: retry throwable for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/kk;->dq()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v6, Lcom/ss/android/socialbase/downloader/constants/ia;->d:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-eq v5, v6, :cond_11

    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v6, 0x5

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-lez v5, :cond_14

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateCurRetryTime(I)V

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :cond_13
    :goto_8
    :try_start_19
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->gh()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_14
    :try_start_1a
    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v5, :cond_16

    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->trySwitchToNextBackupUrl()Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateCurRetryTime(I)V

    goto :goto_8

    :cond_15
    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/kk;->dq()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retry for Throwable, but retry Time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " all used, last error is "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3fa

    invoke-direct {v2, v3, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/ia/ox;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    goto/16 :goto_5

    :cond_16
    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "retry for Throwable, but retain retry time is NULL, last error is"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/kk;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x413

    invoke-direct {v2, v3, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/ia/ox;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    goto/16 :goto_5

    :goto_9
    sget-object v5, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "downloadInner: baseException = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v6, Lcom/ss/android/socialbase/downloader/constants/ia;->d:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-eq v5, v6, :cond_11

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v5

    const/16 v6, 0x401

    if-eq v5, v6, :cond_1a

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v5

    const/16 v6, 0x3f1

    if-ne v5, v6, :cond_17

    goto :goto_a

    :cond_17
    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->c()V

    :cond_18
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v0, v5, v6}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;J)Lcom/ss/android/socialbase/downloader/exception/ia;

    move-result-object v0

    sget-object v5, Lcom/ss/android/socialbase/downloader/exception/ia;->dq:Lcom/ss/android/socialbase/downloader/exception/ia;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    if-ne v0, v5, :cond_13

    :try_start_1b
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->gh()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->f()V

    return-void

    :cond_19
    :try_start_1c
    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/ia/ox;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    goto/16 :goto_5

    :cond_1a
    :goto_a
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/ia;->s:Lcom/ss/android/socialbase/downloader/constants/ia;

    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    :try_start_1d
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->gh()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->f()V

    return-void

    :catch_3
    :try_start_1e
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->mp()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    goto/16 :goto_5

    :goto_b
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->f()V

    return-void

    :goto_c
    :try_start_1f
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->gh()V

    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :goto_d
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->f()V

    throw v0
.end method

.method private ir()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v2

    const-string v3, "opt_mkdir_failed"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x406

    const/4 v5, 0x1

    const-string v6, "download savePath directory can not created:"

    if-ne v2, v5, :cond_2

    :goto_0
    if-nez v1, :cond_0

    add-int/lit8 v2, v4, 0x1

    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    const-wide/16 v4, 0xa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    move v4, v2

    goto :goto_0

    :catch_0
    nop

    :cond_0
    if-nez v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->p(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, 0x4000

    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3ee

    invoke-direct {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/kk/p;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v1

    const/16 v2, 0x407

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "download savePath is not directory:path="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "download savePath is not a directory:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    return-void

    :cond_7
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x405

    const-string v2, "download name can not be empty"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x404

    const-string v2, "download savePath can not be empty"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private ji()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/kk;,
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isExpiredRedownload()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ir:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x3f1

    const-string v2, "file has downloaded"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->d(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->n()Lcom/ss/android/socialbase/downloader/impls/dq;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v4

    if-eq v4, v0, :cond_4

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->equalsTask(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/socialbase/downloader/impls/dq;->dq(I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v3, v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->ox(I)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v4, v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->iw(I)Z

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isBreakpointAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->copyFromCacheData(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {v2, v0}, Lcom/ss/android/socialbase/downloader/model/d;->d(I)V

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v3, v2}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(Lcom/ss/android/socialbase/downloader/model/d;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/kk;

    const-string v1, "retry task because id generator changed"

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/exception/kk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/o;->iw(I)Z

    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x401

    const-string v2, "another same task is downloading"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method private jy()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "reset_retain_retry_times"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->er:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isBackUpUrlUsed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrlRetryCount()I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryCount()I

    move-result v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->er:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->er:I

    :cond_1
    return-void
.end method

.method private k()Z
    .locals 5

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->p:Lcom/ss/android/socialbase/downloader/constants/ia;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/iw;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->ox:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/iw;->ox()V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->d:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/iw;->p()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->s:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-ne v0, v1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/iw;->mn()V
    :try_end_0
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/iw;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->ia:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-ne v0, v1, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->op:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/iw;->dq(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/iw;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->kk:Lcom/ss/android/socialbase/downloader/constants/ia;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {v0, v1, v3}, Lcom/ss/android/socialbase/downloader/downloader/iw;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    return v3

    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->mn:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-ne v0, v1, :cond_6

    return v2

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->iw:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->wp()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    const-string v4, "doTaskStatusHandle retryDelay"

    invoke-static {v0, v4}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->kx()V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-ne v0, v1, :cond_7

    return v2

    :cond_7
    return v3

    :cond_8
    :try_start_2
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->e()Z

    move-result v0

    if-nez v0, :cond_9

    return v3

    :cond_9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/iw;->iw()V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/cd;->dq()Lcom/ss/android/socialbase/downloader/impls/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/cd;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v3, "doTaskStatusHandle onComplete"

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3f0

    invoke-direct {v1, v3, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    :goto_0
    return v2
.end method

.method private kk()Z
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canSkipStatusHandler()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v1, -0x4

    if-eq v0, v1, :cond_0

    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v2, "The download Task can\'t start, because its status is not prepare:"

    invoke-static {v0, v2}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3e8

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method private kx()V
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/ia;->dq:Lcom/ss/android/socialbase/downloader/constants/ia;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    return-void
.end method

.method private le()Z
    .locals 2

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->i()Z

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->i()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/ia;->d:Lcom/ss/android/socialbase/downloader/constants/ia;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/ia;->ox:Lcom/ss/android/socialbase/downloader/constants/ia;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private mp()V
    .locals 3

    sget-object v0, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    const-string v1, "finishWithFileExist"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "fix_end_for_file_exist_error"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->op:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/ia;->s:Lcom/ss/android/socialbase/downloader/constants/ia;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    return-void

    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/ia;->ia:Lcom/ss/android/socialbase/downloader/constants/ia;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->op:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/ia;->s:Lcom/ss/android/socialbase/downloader/constants/ia;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    return-void

    :cond_2
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/ia;->ia:Lcom/ss/android/socialbase/downloader/constants/ia;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    return-void
.end method

.method private n()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/kk/iw;->p(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-wide v2, v0

    :goto_0
    sget-object v4, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkSpaceOverflowInProgress: available = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(J)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v5, v2, v0

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v7

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v5, v2, v7

    if-gez v5, :cond_1

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v5

    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v5

    const-string v9, "space_fill_min_keep_mb"

    const/16 v10, 0x64

    invoke-virtual {v5, v9, v10}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_1

    int-to-long v9, v5

    const-wide/32 v11, 0x100000

    mul-long v9, v9, v11

    sub-long v9, v2, v9

    const-string v13, "checkSpaceOverflowInProgress: minKeep  = "

    const-string v14, "MB, canDownload = "

    invoke-static {v5, v13, v14}, Lg/tn;->z(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v9, v10}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(J)D

    move-result-wide v13

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v4, v9, v0

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    add-long/2addr v9, v11

    add-long/2addr v9, v0

    iput-wide v9, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->u:J

    return-void

    :cond_0
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->u:J

    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/p;

    invoke-direct {v0, v2, v3, v7, v8}, Lcom/ss/android/socialbase/downloader/exception/p;-><init>(JJ)V

    throw v0

    :cond_1
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->u:J

    return-void
.end method

.method private no()V
    .locals 7

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v2, :cond_0

    iget-wide v3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->c:J

    cmp-long v5, v3, v0

    if-lez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->c:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseDownloadPrepareTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getInterceptor()Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;->intercepte()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/iw;->s()V

    return-void

    :catchall_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->kk()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/wp;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v3, 0x3eb

    const-string v4, "task status is invalid"

    invoke-direct {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/p/dq;->dq(Lcom/ss/android/socialbase/downloader/depend/wp;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    return-void

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->ig()V

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->bl:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ji:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ji:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ji:I

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    sget-object v0, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getErrorBytesLog()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/iw;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "current bytes is not equals to total bytes, bytes invalid retry status is : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getByteInvalidRetryStatus()Lcom/ss/android/socialbase/downloader/constants/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x403

    invoke-direct {v1, v3, v2}, Lcom/ss/android/socialbase/downloader/exception/iw;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/iw;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_6

    sget-object v0, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getErrorBytesLog()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/iw;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "curBytes is 0, bytes invalid retry status is : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getByteInvalidRetryStatus()Lcom/ss/android/socialbase/downloader/constants/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x402

    invoke-direct {v1, v3, v2}, Lcom/ss/android/socialbase/downloader/exception/iw;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/iw;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    return-void

    :cond_6
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_3

    sget-object v0, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getErrorBytesLog()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/iw;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TotalBytes is 0, bytes invalid retry status is : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getByteInvalidRetryStatus()Lcom/ss/android/socialbase/downloader/constants/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x414

    invoke-direct {v1, v3, v2}, Lcom/ss/android/socialbase/downloader/exception/iw;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/iw;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    :cond_7
    return-void
.end method

.method private o()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/dq;
        }
    .end annotation

    const-string v0, "fix_file_exist_update_download_info"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-eqz v3, :cond_7

    const/16 v3, 0x800

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/kk/dq;->dq(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/downloader/o;->s()Z

    goto :goto_2

    :catchall_0
    move-exception v2

    :goto_0
    const/4 v4, 0x0

    goto/16 :goto_7

    :catch_0
    move-exception v2

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_c

    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v3, v2}, Lcom/ss/android/socialbase/downloader/downloader/o;->d(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNewTask()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_5

    :cond_1
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMd5()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v7, v3, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->copyFromCacheData(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    const/16 v7, 0x1000

    invoke-static {v7}, Lcom/ss/android/socialbase/downloader/kk/dq;->dq(I)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_0
    .catch Lcom/ss/android/socialbase/downloader/exception/dq; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, v7, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    :try_start_1
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v3, v1, v6}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZLjava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Lcom/ss/android/socialbase/downloader/exception/dq; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v5, :cond_3

    goto :goto_4

    :cond_3
    :try_start_2
    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/dq;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/exception/dq;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/ss/android/socialbase/downloader/exception/dq; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    move v1, v7

    goto :goto_7

    :catch_1
    move-exception v2

    move v1, v7

    goto/16 :goto_c

    :catchall_2
    move-exception v2

    move v1, v7

    goto :goto_0

    :catch_2
    move-exception v2

    move v1, v7

    goto :goto_1

    :cond_4
    :goto_4
    :try_start_3
    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)I

    move-result v3
    :try_end_3
    .catch Lcom/ss/android/socialbase/downloader/exception/dq; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eq v3, v2, :cond_5

    :try_start_4
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v3, v2}, Lcom/ss/android/socialbase/downloader/downloader/o;->iw(I)Z
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/ss/android/socialbase/downloader/exception/dq; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catch_3
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Lcom/ss/android/socialbase/downloader/exception/dq; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    :cond_5
    move v4, v7

    goto :goto_6

    :cond_6
    :goto_5
    :try_start_6
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->reset()V
    :try_end_6
    .catch Lcom/ss/android/socialbase/downloader/exception/dq; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    :goto_6
    :try_start_7
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->ia()V
    :try_end_7
    .catch Lcom/ss/android/socialbase/downloader/exception/dq; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v4, :cond_a

    :try_start_8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_3
    move-exception v2

    move v1, v4

    goto/16 :goto_0

    :catch_5
    move-exception v2

    move v1, v4

    goto/16 :goto_1

    :goto_7
    :try_start_9
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v3, :cond_8

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/wp;

    move-result-object v3

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    new-instance v6, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v7, "checkTaskCache"

    invoke-static {v2, v7}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x3eb

    invoke-direct {v6, v7, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v2

    invoke-static {v3, v5, v6, v2}, Lcom/ss/android/socialbase/downloader/p/dq;->dq(Lcom/ss/android/socialbase/downloader/depend/wp;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v2

    goto :goto_d

    :cond_8
    :goto_8
    if-eqz v1, :cond_a

    if-eqz v4, :cond_9

    :try_start_a
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ce:Lcom/ss/android/socialbase/downloader/mn/dq;

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_9

    :catch_6
    move-exception v0

    goto :goto_a

    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_b

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_b
    return-void

    :goto_c
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_d
    if-eqz v1, :cond_c

    if-eqz v4, :cond_b

    :try_start_c
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ce:Lcom/ss/android/socialbase/downloader/mn/dq;

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_e

    :catch_7
    move-exception v0

    goto :goto_f

    :cond_b
    :goto_e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_10

    :goto_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_10
    throw v2
.end method

.method private op()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/iw;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ob()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/iw;

    const/16 v1, 0x3fb

    const-string v2, "download task need permission:android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/iw;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloadWithWifiValid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveWithWifiValid()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/s;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/exception/s;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/ox;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/exception/ox;-><init>()V

    throw v0
.end method

.method private p(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z
    .locals 8

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v0

    const/16 v3, 0x42e

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->trySwitchToNextBackupUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrlRetryCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateCurRetryTime(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v0

    const/16 v3, 0x3f3

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canReplaceHttpForRetry()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateCurRetryTime(I)V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setHttpsToHttpRetryUsed(Z)V

    :goto_0
    const/4 v1, 0x0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/ia;->iw:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-eq p1, v0, :cond_4

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateCurRetryTime(I)V

    :cond_4
    return v2

    :cond_5
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v2

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const-string v5, " , retry Time "

    const-string v6, " all used, last error is "

    const-string v7, "retry for exception, but current retry time : "

    invoke-static {v7, v3, v5, v4, v6}, Lg/tn;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/ia/ox;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    return v1

    :cond_6
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "retry for exception, but retain retry time is null, last error is :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x413

    invoke-direct {v0, v2, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/ia/ox;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    return v1
.end method

.method private q()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isExpiredRedownload()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getThrottleNetSpeed()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v3, "segment_config"

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/mn/dq;->p(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/o;->q(I)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-lez v4, :cond_4

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    return v1

    :cond_5
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/iw/q;->dq(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/iw/q;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/iw/no;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-direct {v1, v4, v0, p0}, Lcom/ss/android/socialbase/downloader/iw/no;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/iw/q;Lcom/ss/android/socialbase/downloader/ia/iw;)V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wn:Lcom/ss/android/socialbase/downloader/iw/no;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->le()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    const-string v1, "downloadSegments: is stopped by user"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->ox:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wn:Lcom/ss/android/socialbase/downloader/iw/no;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/no;->dq()V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wn:Lcom/ss/android/socialbase/downloader/iw/no;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/no;->d()V

    :goto_2
    return v2

    :cond_7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wn:Lcom/ss/android/socialbase/downloader/iw/no;

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(Ljava/util/List;)Z

    move-result v0

    return v0

    :cond_8
    :goto_3
    return v1
.end method

.method private r()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->mn:Lcom/ss/android/socialbase/downloader/downloader/s;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->ox:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->mn:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/s;->ox()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->d:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->mn:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/s;->d()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->mn:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/s;->p()V

    :cond_2
    return-void
.end method

.method private u()V
    .locals 7

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->iw(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sget-object v4, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    const-string v5, "checkTaskCanResume: offset = "

    const-string v6, ", curBytes = "

    invoke-static {v0, v1, v5, v6}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2, v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCurBytes(J)V

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->kk:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ir:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    const-string v1, "checkTaskCanResume: deleteAllDownloadFiles"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->p(I)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->mp(I)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    :cond_2
    return-void
.end method

.method private wn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private wp()Z
    .locals 7

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/ss/android/socialbase/downloader/downloader/o;->ox(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/d;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/d;->kk()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    return v1

    :cond_5
    return v2

    :cond_6
    :goto_0
    return v1
.end method


# virtual methods
.method public d()V
    .locals 2

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/ia;->ox:Lcom/ss/android/socialbase/downloader/constants/ia;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wn:Lcom/ss/android/socialbase/downloader/iw/no;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wn:Lcom/ss/android/socialbase/downloader/iw/no;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/iw/no;->dq()V

    :cond_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->mn:Lcom/ss/android/socialbase/downloader/downloader/s;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->mn:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/downloader/s;->ox()V

    :cond_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wn:Lcom/ss/android/socialbase/downloader/iw/no;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->mn:Lcom/ss/android/socialbase/downloader/downloader/s;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->gh()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->f()V

    :cond_2
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->ce()V

    return-void
.end method

.method public d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .locals 3

    sget-object v0, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/ia;->p:Lcom/ss/android/socialbase/downloader/constants/ia;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->ce()V

    return-void
.end method

.method public d(J)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->u:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->u:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->n()V

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/iw;->dq(J)Z

    move-result p1

    return p1
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;J)Lcom/ss/android/socialbase/downloader/exception/ia;
    .locals 6

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    neg-long p2, p2

    invoke-virtual {v0, p2, p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseCurBytes(J)V

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->i()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/ia;->dq:Lcom/ss/android/socialbase/downloader/exception/ia;

    return-object p1

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result p3

    const/16 v0, 0x417

    if-ne p3, v0, :cond_3

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->kx:Lcom/ss/android/socialbase/downloader/depend/k;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isForbiddenRetryed()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p3, Lcom/ss/android/socialbase/downloader/ia/ox$1;

    invoke-direct {p3, p0}, Lcom/ss/android/socialbase/downloader/ia/ox$1;-><init>(Lcom/ss/android/socialbase/downloader/ia/ox;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->kx:Lcom/ss/android/socialbase/downloader/depend/k;

    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/depend/k;->dq(Lcom/ss/android/socialbase/downloader/depend/le;)Z

    move-result v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setForbiddenRetryed()V

    if-eqz v0, :cond_c

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/depend/d;->dq()Z

    move-result p3

    if-nez p3, :cond_d

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->ce()V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/downloader/iw;->ia()V

    sget-object p1, Lcom/ss/android/socialbase/downloader/constants/ia;->mn:Lcom/ss/android/socialbase/downloader/constants/ia;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/ia;->dq:Lcom/ss/android/socialbase/downloader/exception/ia;

    return-object p1

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/ia/ox;->p(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result p3

    if-eqz p3, :cond_c

    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/ia;->dq:Lcom/ss/android/socialbase/downloader/exception/ia;

    return-object p1

    :cond_3
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->ia(Ljava/lang/Throwable;)Z

    move-result p3

    if-eqz p3, :cond_b

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->h:Lcom/ss/android/socialbase/downloader/depend/cd;

    if-nez p3, :cond_4

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/ia/ox;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/ia;->dq:Lcom/ss/android/socialbase/downloader/exception/ia;

    return-object p1

    :cond_4
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v5, Lcom/ss/android/socialbase/downloader/ia/ox$2;

    invoke-direct {v5, p0, p3}, Lcom/ss/android/socialbase/downloader/ia/ox$2;-><init>(Lcom/ss/android/socialbase/downloader/ia/ox;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    instance-of v0, p1, Lcom/ss/android/socialbase/downloader/exception/p;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/ss/android/socialbase/downloader/exception/p;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/p;->dq()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/p;->d()J

    move-result-wide v3

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    const-wide/16 v1, -0x1

    :goto_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->h:Lcom/ss/android/socialbase/downloader/depend/cd;

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/depend/cd;->dq(JJLcom/ss/android/socialbase/downloader/depend/fw;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "not_delete_when_clean_space"

    invoke-virtual {v0, v1, p2}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->e()Z

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object p2, Lcom/ss/android/socialbase/downloader/constants/ia;->mn:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-eq p1, p2, :cond_7

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->ce()V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/downloader/iw;->ia()V

    :cond_7
    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/ia;->dq:Lcom/ss/android/socialbase/downloader/exception/ia;

    monitor-exit p0

    return-object p1

    :cond_8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/ia/ox;->p(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result p3

    if-eqz p3, :cond_d

    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/ia;->dq:Lcom/ss/android/socialbase/downloader/exception/ia;

    return-object p1

    :cond_9
    :try_start_1
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object p3, Lcom/ss/android/socialbase/downloader/constants/ia;->mn:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-ne p2, p3, :cond_a

    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/ia;->dq:Lcom/ss/android/socialbase/downloader/exception/ia;

    monitor-exit p0

    return-object p1

    :cond_a
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/ia/ox;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/ia;->dq:Lcom/ss/android/socialbase/downloader/exception/ia;

    monitor-exit p0

    return-object p1

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_b
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/ia/ox;->p(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result p3

    if-eqz p3, :cond_c

    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/ia;->dq:Lcom/ss/android/socialbase/downloader/exception/ia;

    return-object p1

    :cond_c
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->wn()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->ce()V

    :cond_d
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->iw:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-ne v0, v1, :cond_e

    const/4 p2, 0x1

    :cond_e
    invoke-virtual {p3, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/iw;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-ne p1, v1, :cond_f

    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/ia;->dq:Lcom/ss/android/socialbase/downloader/exception/ia;

    return-object p1

    :cond_f
    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/ia;->d:Lcom/ss/android/socialbase/downloader/exception/ia;

    return-object p1
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/d;Lcom/ss/android/socialbase/downloader/exception/BaseException;J)Lcom/ss/android/socialbase/downloader/exception/ia;
    .locals 2

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/ia;->dq:Lcom/ss/android/socialbase/downloader/exception/ia;

    return-object p1

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_1

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/kk/iw;->ia(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;J)Lcom/ss/android/socialbase/downloader/exception/ia;

    move-result-object p1

    return-object p1

    :cond_2
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    neg-long p3, p3

    invoke-virtual {v0, p3, p4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseCurBytes(J)V

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object p4, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    invoke-direct {p0, p2}, Lcom/ss/android/socialbase/downloader/ia/ox;->p(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/ia;->dq:Lcom/ss/android/socialbase/downloader/exception/ia;

    return-object p1

    :cond_3
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    iget-object p4, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/ia;->iw:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-ne p4, v0, :cond_4

    const/4 p4, 0x1

    goto :goto_0

    :cond_4
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p3, p1, p2, p4}, Lcom/ss/android/socialbase/downloader/downloader/iw;->dq(Lcom/ss/android/socialbase/downloader/model/d;Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    if-eq p1, v0, :cond_5

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedRetryDelay()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->h()J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-lez v0, :cond_5

    sget-object p3, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "onSingleChunkRetry with delay time "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object p2, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "onSingleChunkRetry:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/ia;->d:Lcom/ss/android/socialbase/downloader/exception/ia;

    return-object p1
.end method

.method public declared-synchronized dq(I)Lcom/ss/android/socialbase/downloader/model/d;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->jy:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->ox(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/d;

    if-eqz v3, :cond_2

    invoke-direct {p0, v3, p1}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Lcom/ss/android/socialbase/downloader/model/d;I)Lcom/ss/android/socialbase/downloader/model/d;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-object v2

    :cond_4
    :goto_1
    monitor-exit p0

    return-object v2

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public dq()V
    .locals 2

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/ia;->d:Lcom/ss/android/socialbase/downloader/constants/ia;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wn:Lcom/ss/android/socialbase/downloader/iw/no;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wn:Lcom/ss/android/socialbase/downloader/iw/no;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/iw/no;->d()V

    :cond_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->mn:Lcom/ss/android/socialbase/downloader/downloader/s;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->mn:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/downloader/s;->d()V

    :cond_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wn:Lcom/ss/android/socialbase/downloader/iw/no;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->mn:Lcom/ss/android/socialbase/downloader/downloader/s;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->gh()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->f()V

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->iw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/ia/d;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->dq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_4
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(J)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v4, ", mustSetLength = "

    const-string v0, "MB"

    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p1 .. p2}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(J)Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    :cond_0
    iget-object v7, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v8, -0x1

    invoke-static {v7, v5, v6, v8}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;I)Lcom/ss/android/socialbase/downloader/model/s;

    move-result-object v7

    const/4 v8, 0x0

    :try_start_0
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    sub-long v12, p1, v10

    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/kk/iw;->p(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v14, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v14}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v14

    invoke-static {v14}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v14

    const-string v15, "space_fill_part_download"

    invoke-virtual {v14, v15, v8}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, " 0"

    const-string v17, "<"

    const-string v18, "="

    const-string v9, "availableSpace "

    move-wide/from16 v19, v10

    const-wide/16 v10, 0x0

    move-wide/from16 v21, v12

    const/4 v12, 0x1

    if-ne v15, v12, :cond_a

    :try_start_1
    iput-wide v10, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->u:J

    cmp-long v12, v21, v10

    if-gtz v12, :cond_1

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v12}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v12

    iget-object v15, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v15}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v21

    sub-long v12, v12, v21

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v12, 0x1

    goto/16 :goto_9

    :cond_1
    move-wide/from16 v12, v21

    :goto_0
    cmp-long v15, v5, v12

    if-gez v15, :cond_9

    sget-object v15, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    move-wide/from16 v23, v10

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "checkSpaceOverflow: contentLength = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p2}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(J)D

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "MB, downloaded = "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v20}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(J)D

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "MB, required = "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(J)D

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "MB, available = "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(J)D

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v2, v5, v23

    if-lez v2, :cond_6

    const-string v2, "space_fill_min_keep_mb"

    const/16 v3, 0x64

    invoke-virtual {v14, v2, v3}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_3

    int-to-long v8, v2

    const-wide/32 v10, 0x100000

    mul-long v8, v8, v10

    sub-long v8, v5, v8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "checkSpaceOverflow: minKeep = "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "MB, canDownload = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(J)D

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v8, v23

    if-lez v0, :cond_2

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    add-long/2addr v2, v8

    iput-wide v2, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->u:J

    move-wide v5, v8

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/p;

    invoke-direct {v0, v5, v6, v12, v13}, Lcom/ss/android/socialbase/downloader/exception/p;-><init>(JJ)V

    throw v0

    :cond_3
    :goto_1
    cmp-long v0, v19, p1

    if-gez v0, :cond_4

    add-long v10, v19, v5

    cmp-long v0, v10, p1

    if-lez v0, :cond_5

    :cond_4
    move-wide/from16 v10, p1

    :cond_5
    move-wide/from16 v5, p1

    :goto_2
    const/4 v2, 0x1

    goto :goto_6

    :cond_6
    const-string v0, "download_when_space_negative"

    const/4 v3, 0x0

    invoke-virtual {v14, v0, v3}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_7

    move-wide/from16 v5, p1

    move-wide v10, v5

    const/4 v2, 0x0

    goto :goto_6

    :cond_7
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_8

    move-object/from16 v2, v18

    goto :goto_3

    :cond_8
    move-object/from16 v2, v17

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x41c

    invoke-direct {v0, v3, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_9
    move-wide/from16 v23, v10

    goto :goto_5

    :cond_a
    move-wide/from16 v23, v10

    cmp-long v0, v5, v23

    if-gtz v0, :cond_c

    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_b

    move-object/from16 v0, v18

    goto :goto_4

    :cond_b
    move-object/from16 v0, v17

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x41c

    invoke-direct {v2, v3, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    cmp-long v0, v5, v21

    if-ltz v0, :cond_10

    :goto_5
    move-wide/from16 v5, p1

    move-wide v10, v5

    goto :goto_2

    :goto_6
    :try_start_2
    invoke-virtual {v7, v5, v6}, Lcom/ss/android/socialbase/downloader/model/s;->d(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_7
    const/4 v12, 0x1

    goto :goto_8

    :catchall_1
    move-exception v0

    :try_start_3
    sget-object v3, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "checkSpaceOverflow: setLength1 e = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v3, 0x410

    cmp-long v8, v10, v5

    if-gez v8, :cond_e

    cmp-long v5, v10, v23

    if-lez v5, :cond_e

    cmp-long v5, v10, v19

    if-lez v5, :cond_e

    :try_start_4
    invoke-virtual {v7, v10, v11}, Lcom/ss/android/socialbase/downloader/model/s;->d(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    :try_start_5
    sget-object v5, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "checkSpaceOverflow: setLength2 ex = "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_d

    goto :goto_7

    :cond_d
    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-direct {v2, v3, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_e
    if-nez v2, :cond_f

    goto :goto_7

    :goto_8
    new-array v0, v12, [Ljava/io/Closeable;

    const/16 v16, 0x0

    aput-object v7, v0, v16

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    return-void

    :cond_f
    :try_start_6
    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-direct {v2, v3, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v2

    :cond_10
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/p;

    move-wide/from16 v2, v21

    invoke-direct {v0, v5, v6, v2, v3}, Lcom/ss/android/socialbase/downloader/exception/p;-><init>(JJ)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_9
    new-array v2, v12, [Ljava/io/Closeable;

    const/16 v16, 0x0

    aput-object v7, v2, v16

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    throw v0
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    .locals 2

    sget-object v0, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    const-string v1, "onAllChunkRetryWithReset"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/ia;->kk:Lcom/ss/android/socialbase/downloader/constants/ia;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->q:Lcom/ss/android/socialbase/downloader/constants/ia;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->ce()V

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/ia/ox;->p(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->c()V

    :cond_1
    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/ia/d;)V
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ia:Z

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->iw:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/network/mn;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/network/mn;->d()I

    move-result p1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setHttpStatusCode(I)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/d;->dq(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setHttpStatusMessage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setHttpStatusCode(I)V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setHttpStatusMessage(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/mn;J)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Lcom/ss/android/socialbase/downloader/exception/kk;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-wide/from16 v2, p3

    const-string v4, " before="

    const-string v5, " cur="

    const-string v6, "dcache=responseCode="

    if-nez v0, :cond_0

    goto/16 :goto_b

    :cond_0
    :try_start_0
    new-instance v7, Lcom/ss/android/socialbase/downloader/model/p;

    move-object/from16 v8, p1

    invoke-direct {v7, v8, v0}, Lcom/ss/android/socialbase/downloader/model/p;-><init>(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/mn;)V

    iget v8, v7, Lcom/ss/android/socialbase/downloader/model/p;->ox:I

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/model/p;->p()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v10, v9}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setMimeType(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    goto/16 :goto_e

    :catch_1
    move-exception v0

    goto/16 :goto_f

    :cond_1
    :goto_0
    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/model/p;->d()Z

    move-result v9

    iput-boolean v9, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->o:Z

    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v10, v9}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setSupportPartial(Z)V

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/model/p;->dq()Z

    move-result v9

    iput-boolean v9, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->no:Z

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->geteTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/model/p;->ox()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/model/p;->iw()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/model/p;->mn()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/ss/android/socialbase/downloader/ia/ox;->dq:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " last_modified="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " CACHE_CONTROL="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " max-age="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p1, v9

    move-object v15, v10

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/model/p;->no()J

    move-result-wide v9

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " isDeleteCacheIfCheckFailed="

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDeleteCacheIfCheckFailed()Z

    move-result v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "dcache=firstOffset="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastModified()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/model/p;->o()J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2, v12}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCacheControl(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/model/p;->no()J

    move-result-wide v9

    cmp-long v2, v9, v3

    if-lez v2, :cond_2

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/model/p;->no()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    add-long v9, v16, v9

    invoke-virtual {v2, v9, v10}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCacheExpiredTime(J)V

    :cond_2
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isExpiredRedownload()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->ir:Z

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->op:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x130

    if-eq v8, v2, :cond_4

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastModified()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDeleteCacheIfCheckFailed()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastModified()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lastModified not changed, use local file  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/dq;

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->op:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/ss/android/socialbase/downloader/exception/dq;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/ss/android/socialbase/downloader/exception/kk; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    const-string v2, ""

    cmp-long v5, p3, v3

    if-lez v5, :cond_6

    :try_start_1
    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isExpiredRedownload()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastModified()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "dcache cdn file change, so retry"

    invoke-static {v13, v6}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "cdn file changed"

    invoke-direct {v1, v2, v6}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v6, v11}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setLastModified(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v6, p1

    invoke-direct {v1, v8, v6, v15}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    const/16 v10, 0x3ea

    if-eqz v9, :cond_a

    instance-of v9, v0, Lcom/ss/android/socialbase/downloader/network/kk;

    if-eqz v9, :cond_9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v15, v2

    :cond_8
    const-string v6, "eTag of server file changed"

    invoke-direct {v1, v15, v6}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/d;

    invoke-direct {v0, v10, v8, v2}, Lcom/ss/android/socialbase/downloader/exception/d;-><init>(IILjava/lang/String;)V

    throw v0

    :cond_a
    :goto_3
    iget-boolean v6, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->o:Z

    const/16 v9, 0x3ec

    if-nez v6, :cond_d

    iget-boolean v6, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->no:Z

    if-eqz v6, :cond_b

    goto :goto_4

    :cond_b
    const/16 v0, 0x193

    if-ne v8, v0, :cond_c

    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v2, "response code error : 403"

    const/16 v3, 0x417

    invoke-direct {v0, v3, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "response code error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v9, v8, v2}, Lcom/ss/android/socialbase/downloader/exception/d;-><init>(IILjava/lang/String;)V

    throw v0

    :cond_d
    :goto_4
    iget-boolean v6, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->no:Z

    if-eqz v6, :cond_f

    if-lez v5, :cond_f

    instance-of v5, v0, Lcom/ss/android/socialbase/downloader/network/kk;

    if-eqz v5, :cond_e

    const-string v5, "http head request not support"

    invoke-direct {v1, v2, v5}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v2, "isResponseFromBegin but firstOffset > 0"

    invoke-direct {v0, v9, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_f
    :goto_5
    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/model/p;->ia()J

    move-result-wide v5

    instance-of v11, v0, Lcom/ss/android/socialbase/downloader/network/kk;

    if-nez v11, :cond_11

    cmp-long v11, v5, v3

    if-gez v11, :cond_11

    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v11}, Lcom/ss/android/socialbase/downloader/kk/p;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v11

    if-nez v11, :cond_10

    goto :goto_6

    :cond_10
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-direct {v0, v9, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_11
    :goto_6
    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_12

    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Lcom/ss/android/socialbase/downloader/network/mn;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_12
    move-object v11, v2

    :goto_7
    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/model/p;->kk()Z

    move-result v7

    iput-boolean v7, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->ig:Z

    if-nez v7, :cond_14

    cmp-long v12, v5, v3

    if-nez v12, :cond_14

    instance-of v12, v0, Lcom/ss/android/socialbase/downloader/network/kk;

    if-eqz v12, :cond_13

    goto :goto_8

    :cond_13
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-direct {v0, v9, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_14
    :goto_8
    const/4 v9, 0x1

    if-nez v7, :cond_16

    const-string v7, "Content-Range"

    invoke-static {v0, v7}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Lcom/ss/android/socialbase/downloader/network/mn;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "firstConnection: contentRange = "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_15

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->ce:Lcom/ss/android/socialbase/downloader/mn/dq;

    const-string v14, "fix_get_total_bytes"

    invoke-virtual {v12, v14, v9}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-static {v7}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Ljava/lang/String;)J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "firstConnection: 1 totalLength = "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v16, v3

    goto :goto_9

    :cond_15
    move-wide/from16 v16, v3

    add-long v3, p3, v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "firstConnection: 2 totalLength = "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", contentLength = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v5, v3

    goto :goto_9

    :cond_16
    move-wide/from16 v16, v3

    const-wide/16 v5, -0x1

    :goto_9
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    cmp-long v7, v3, v16

    if-lez v7, :cond_18

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    cmp-long v7, v5, v3

    if-eqz v7, :cond_18

    instance-of v0, v0, Lcom/ss/android/socialbase/downloader/network/kk;

    if-eqz v0, :cond_17

    const-string v0, "file totalLength changed"

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_17
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/d;

    invoke-direct {v0, v10, v8, v2}, Lcom/ss/android/socialbase/downloader/exception/d;-><init>(IILjava/lang/String;)V

    throw v0

    :cond_18
    :goto_a
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/ox;->le()Z

    move-result v0

    if-eqz v0, :cond_19

    :goto_b
    return-void

    :cond_19
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExpectFileLength()J

    move-result-wide v2

    cmp-long v0, v2, v16

    if-lez v0, :cond_1b

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v2, "force_check_file_length"

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v9, :cond_1b

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExpectFileLength()J

    move-result-wide v2

    cmp-long v0, v2, v5

    if-nez v0, :cond_1a

    goto :goto_c

    :cond_1a
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expectFileLength = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExpectFileLength()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " , totalLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x42e

    invoke-direct {v0, v3, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1b
    :goto_c
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    invoke-virtual {v0, v5, v6, v15, v11}, Lcom/ss/android/socialbase/downloader/downloader/iw;->dq(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/ss/android/socialbase/downloader/exception/kk; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :goto_d
    const-string v2, "HandleFirstConnection"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :goto_e
    throw v0

    :goto_f
    throw v0
.end method

.method public dq(Ljava/util/concurrent/Future;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->d:Ljava/util/concurrent/Future;

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z
    .locals 4

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->wn:Lcom/ss/android/socialbase/downloader/iw/no;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->kk(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ia:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->p:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->p:Z

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->hasNextBackupUrl()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v0

    const/16 v3, 0x3f3

    if-eq v0, v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canReplaceHttpForRetry()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    instance-of p1, p1, Lcom/ss/android/socialbase/downloader/exception/iw;

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method public iw()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->c:J

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->le:Lcom/ss/android/socialbase/downloader/downloader/iw;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/iw;->dq()V

    return-void
.end method

.method public mn()Ljava/util/concurrent/Future;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->d:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public ox()Lcom/ss/android/socialbase/downloader/model/DownloadTask;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    return-object v0
.end method

.method public ox(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setChunkDowngradeRetryUsed(Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    return-void
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->mp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;I)V

    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/d;->dq()Lcom/ss/android/socialbase/downloader/network/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/d;->d()V

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/ox;->no()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/d;->dq()Lcom/ss/android/socialbase/downloader/network/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/d;->ox()V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/ox;->d(Lcom/ss/android/socialbase/downloader/model/DownloadTask;I)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/d;->dq()Lcom/ss/android/socialbase/downloader/network/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/network/d;->ox()V

    throw v0
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox;->f:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

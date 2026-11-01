.class Lcom/ss/android/socialbase/downloader/iw/mp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private bl:I

.field private c:Z

.field private cd:J

.field private ce:Lcom/ss/android/socialbase/downloader/exception/BaseException;

.field d:Lcom/ss/android/socialbase/downloader/iw/fw;

.field volatile dq:Lcom/ss/android/socialbase/downloader/iw/kk;

.field private volatile e:Z

.field private er:Z

.field private f:Lcom/ss/android/socialbase/downloader/model/p;

.field private final fw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/iw/kk;",
            ">;"
        }
    .end annotation
.end field

.field private volatile gh:J

.field private h:Ljava/lang/Thread;

.field private volatile i:J

.field ia:Ljava/lang/String;

.field private final ig:Lcom/ss/android/socialbase/downloader/iw/ox;

.field private ir:J

.field volatile iw:J

.field private j:Lcom/ss/android/socialbase/downloader/kk/s;

.field private volatile ji:Z

.field private jy:Lcom/ss/android/socialbase/downloader/network/kk;

.field private k:Ljava/util/concurrent/Future;

.field kk:Ljava/lang/String;

.field private volatile kx:Z

.field private volatile le:J

.field volatile mn:J

.field private final mp:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field private n:I

.field private final no:Lcom/ss/android/socialbase/downloader/iw/iw;

.field o:Ljava/lang/String;

.field private op:I

.field final ox:I

.field volatile p:J

.field private final q:Lcom/ss/android/socialbase/downloader/mn/dq;

.field private volatile r:J

.field volatile s:J

.field private u:I

.field private wn:Z

.field private volatile wp:Z


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/iw/no;Lcom/ss/android/socialbase/downloader/iw/ox;Lcom/ss/android/socialbase/downloader/iw/fw;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->fw:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->i:J

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->mp:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->ig:Lcom/ss/android/socialbase/downloader/iw/ox;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->q:Lcom/ss/android/socialbase/downloader/mn/dq;

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->d:Lcom/ss/android/socialbase/downloader/iw/fw;

    iput p5, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->ox:I

    return-void
.end method

.method private d(Lcom/ss/android/socialbase/downloader/iw/kk;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Lcom/ss/android/socialbase/downloader/exception/kk;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/iw/mp;->ox(Lcom/ss/android/socialbase/downloader/iw/kk;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->d:Lcom/ss/android/socialbase/downloader/iw/fw;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->f:Lcom/ss/android/socialbase/downloader/model/p;

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/ss/android/socialbase/downloader/iw/iw;->dq(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/kk;Lcom/ss/android/socialbase/downloader/iw/fw;Lcom/ss/android/socialbase/downloader/model/p;)V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->d:Lcom/ss/android/socialbase/downloader/iw/fw;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/iw/fw;->ox()V

    return-void
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/iw/ox;Ljava/io/InputStream;)Lcom/ss/android/socialbase/downloader/iw/dq;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/iw/ox;->d()Lcom/ss/android/socialbase/downloader/iw/dq;

    move-result-object v0

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/iw/dq;->dq:[B

    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq p2, v1, :cond_1

    :try_start_1
    iput p2, v0, Lcom/ss/android/socialbase/downloader/iw/dq;->ox:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p2, v1, :cond_0

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/iw/ox;->dq(Lcom/ss/android/socialbase/downloader/iw/dq;)V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v2

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v3, "probe"

    const/16 v4, 0x431

    invoke-direct {v2, v4, v3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception v2

    const/4 p2, -0x1

    :goto_0
    if-ne p2, v1, :cond_2

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/iw/ox;->dq(Lcom/ss/android/socialbase/downloader/iw/dq;)V

    :cond_2
    throw v2
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z
    .locals 2

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->ox(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->d:Lcom/ss/android/socialbase/downloader/iw/fw;

    iget-object p1, p1, Lcom/ss/android/socialbase/downloader/iw/fw;->dq:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "https"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->mp:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedHttpsToHttpRetry()Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->c:Z

    if-eqz p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->c:Z

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/mp;->ig()V

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/iw/kk;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/mp;->no()V

    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/iw/mp;->d(Lcom/ss/android/socialbase/downloader/iw/kk;)V

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/iw/mp;->p(Lcom/ss/android/socialbase/downloader/iw/kk;)V
    :try_end_0
    .catch Lcom/ss/android/socialbase/downloader/iw/o; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/mp;->kk()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :goto_1
    :try_start_1
    const-string v1, "SegmentReader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download: e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", threadIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->ox:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reconnect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->e:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", closed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->wp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->wp:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/mp;->kk()V

    return v2

    :cond_0
    :try_start_2
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v3, "download"

    if-eqz v1, :cond_2

    :try_start_3
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->e:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->kx:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v0, :cond_1

    :goto_3
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/mp;->kk()V

    goto :goto_0

    :cond_1
    :try_start_6
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->kx:Z

    new-instance p1, Lcom/ss/android/socialbase/downloader/iw/o;

    const/4 v0, 0x5

    invoke-direct {p1, v0, v3}, Lcom/ss/android/socialbase/downloader/iw/o;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_2
    move-exception p1

    goto :goto_6

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :cond_3
    :try_start_7
    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v0, 0x0

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_4
    if-eqz v0, :cond_4

    :try_start_8
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/iw/mp;->dq(Lcom/ss/android/socialbase/downloader/iw/kk;Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/mp;->kk()V

    return v2

    :goto_5
    :try_start_9
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->ce:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_6
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/mp;->kk()V

    throw p1
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/iw/kk;Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleDownloadFailed:  e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", curRetryCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->op:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SegmentReader"

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->ce:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->d:Lcom/ss/android/socialbase/downloader/iw/fw;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/fw;->d()V

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->d:Lcom/ss/android/socialbase/downloader/iw/fw;

    iget v6, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->op:I

    iget v7, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->n:I

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v1 .. v7}, Lcom/ss/android/socialbase/downloader/iw/iw;->dq(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/fw;Lcom/ss/android/socialbase/downloader/iw/kk;Lcom/ss/android/socialbase/downloader/exception/BaseException;II)V

    iget p1, v2, Lcom/ss/android/socialbase/downloader/iw/mp;->op:I

    iget p2, v2, Lcom/ss/android/socialbase/downloader/iw/mp;->n:I

    const/4 v0, 0x1

    if-ge p1, p2, :cond_0

    add-int/2addr p1, v0

    iput p1, v2, Lcom/ss/android/socialbase/downloader/iw/mp;->op:I

    return v0

    :cond_0
    invoke-direct {p0, v5}, Lcom/ss/android/socialbase/downloader/iw/mp;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    iget-object p1, v2, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;

    iget-object p2, v2, Lcom/ss/android/socialbase/downloader/iw/mp;->d:Lcom/ss/android/socialbase/downloader/iw/fw;

    invoke-interface {p1, p0, p2, v4, v5}, Lcom/ss/android/socialbase/downloader/iw/iw;->dq(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/fw;Lcom/ss/android/socialbase/downloader/iw/kk;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    const/4 p1, 0x0

    return p1
.end method

.method private ig()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->d:Lcom/ss/android/socialbase/downloader/iw/fw;

    iget-boolean v0, v0, Lcom/ss/android/socialbase/downloader/iw/fw;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->mp:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryCount()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->mp:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrlRetryCount()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->op:I

    return-void
.end method

.method private kk()V
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->p:J

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->ir:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->p:J

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->s:J

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->iw:J

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->mn:J

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/mp;->o()V

    return-void
.end method

.method private mp()J
    .locals 5

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->gh:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->gh:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :cond_0
    return-wide v0
.end method

.method private no()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->c:Z

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/mp;->ig()V

    return-void
.end method

.method private o()V
    .locals 4

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->jy:Lcom/ss/android/socialbase/downloader/network/kk;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "SegmentReader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "closeConnection: thread = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->ox:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/kk;->p()V

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/mn;->ox()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private ox(Lcom/ss/android/socialbase/downloader/iw/kk;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "createConn"

    const-string v0, "https"

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    iput-wide v5, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->s:J

    iput-wide v3, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->p:J

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/iw/kk;->s()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->cd:J

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/iw/kk;->iw()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->r:J

    iget-wide v7, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->r:J

    cmp-long v9, v7, v5

    if-lez v9, :cond_1

    iget-wide v5, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->cd:J

    iget-wide v7, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->r:J

    cmp-long v9, v5, v7

    if-gtz v9, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/iw/o;

    const-string v3, "createConn, "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-direct {v0, v4, v3}, Lcom/ss/android/socialbase/downloader/iw/o;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    :goto_0
    new-instance v5, Lcom/ss/android/socialbase/downloader/kk/s;

    invoke-direct {v5}, Lcom/ss/android/socialbase/downloader/kk/s;-><init>()V

    iput-object v5, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->j:Lcom/ss/android/socialbase/downloader/kk/s;

    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->mp:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtraHeaders()Ljava/util/List;

    move-result-object v6

    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->mp:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->geteTag()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->cd:J

    iget-wide v10, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->r:J

    invoke-static/range {v6 .. v11}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/ss/android/socialbase/downloader/model/ox;

    const-string v7, "Segment-Index"

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/iw/kk;->mn()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/ss/android/socialbase/downloader/model/ox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/ss/android/socialbase/downloader/model/ox;

    const-string v7, "Thread-Index"

    iget v8, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->ox:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/ss/android/socialbase/downloader/model/ox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->mp:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v5, v6}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/util/List;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->mp:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v5, v6}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Ljava/util/List;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->d:Lcom/ss/android/socialbase/downloader/iw/fw;

    iget-object v6, v6, Lcom/ss/android/socialbase/downloader/iw/fw;->dq:Ljava/lang/String;

    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->c:Z

    if-eqz v7, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "http"

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_2
    move-object v14, v6

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->d:Lcom/ss/android/socialbase/downloader/iw/fw;

    iget-object v15, v0, Lcom/ss/android/socialbase/downloader/iw/fw;->d:Ljava/lang/String;

    const-string v0, "SegmentReader"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "createConnectionBegin: url = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", ip = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", segment = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", threadIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->ox:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v14, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->ia:Ljava/lang/String;

    iput-object v15, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->kk:Ljava/lang/String;

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->mp:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedDefaultHttpServiceBackUp()Z

    move-result v12

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->mp:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMaxBytes()I

    move-result v13

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->ir:J

    sub-long/2addr v3, v6

    const-wide/16 v6, 0xbb8

    cmp-long v0, v3, v6

    if-lez v0, :cond_3

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->q:Lcom/ss/android/socialbase/downloader/mn/dq;

    const-string v3, "monitor_download_connect"

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    const/16 v18, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const/16 v18, 0x0

    :goto_1
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->mp:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/16 v17, 0x0

    move-object/from16 v19, v0

    move-object/from16 v16, v5

    invoke-static/range {v12 .. v19}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(ZILjava/lang/String;Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/kk;

    move-result-object v0

    if-eqz v0, :cond_6

    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->jy:Lcom/ss/android/socialbase/downloader/network/kk;

    new-instance v3, Lcom/ss/android/socialbase/downloader/model/p;

    invoke-direct {v3, v14, v0}, Lcom/ss/android/socialbase/downloader/model/p;-><init>(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/mn;)V

    iput-object v3, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->f:Lcom/ss/android/socialbase/downloader/model/p;

    iget-boolean v3, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->wp:Z

    if-nez v3, :cond_5

    instance-of v3, v0, Lcom/ss/android/socialbase/downloader/network/dq;

    if-eqz v3, :cond_4

    check-cast v0, Lcom/ss/android/socialbase/downloader/network/dq;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/dq;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->o:Ljava/lang/String;
    :try_end_0
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->s:J

    return-void

    :cond_5
    :try_start_1
    new-instance v0, Lcom/ss/android/socialbase/downloader/iw/f;

    invoke-direct {v0, v2}, Lcom/ss/android/socialbase/downloader/iw/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "download can\'t continue, chunk connection is null"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x3fe

    invoke-direct {v0, v4, v3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    :try_start_2
    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_5

    :goto_4
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->s:J

    throw v0
.end method

.method private p(Lcom/ss/android/socialbase/downloader/iw/kk;)V
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->ig:Lcom/ss/android/socialbase/downloader/iw/ox;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->iw:J

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/iw/kk;->s()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    :try_start_0
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->jy:Lcom/ss/android/socialbase/downloader/network/kk;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/kk;->dq()Ljava/io/InputStream;

    move-result-object v10
    :try_end_0
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_13

    if-eqz v10, :cond_17

    :try_start_1
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->f:Lcom/ss/android/socialbase/downloader/model/p;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/p;->ia()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-eqz v0, :cond_16

    invoke-direct {v1, v3, v10}, Lcom/ss/android/socialbase/downloader/iw/mp;->dq(Lcom/ss/android/socialbase/downloader/iw/ox;Ljava/io/InputStream;)Lcom/ss/android/socialbase/downloader/iw/dq;

    move-result-object v15
    :try_end_1
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_11

    :try_start_2
    iget-boolean v9, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->e:Z

    if-nez v9, :cond_15

    iget-boolean v9, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->wp:Z

    if-nez v9, :cond_15

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;

    invoke-interface {v9, v1, v2}, Lcom/ss/android/socialbase/downloader/iw/iw;->d(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/kk;)V

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;

    invoke-interface {v9, v1, v2}, Lcom/ss/android/socialbase/downloader/iw/iw;->p(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/kk;)Lcom/ss/android/socialbase/downloader/iw/s;

    move-result-object v9
    :try_end_2
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_f

    :try_start_3
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/iw/kk;->iw()J

    move-result-wide v17

    const-wide v19, 0x7fffffffffffffffL

    const-wide/16 v21, 0x1

    cmp-long v23, v17, v13

    if-lez v23, :cond_0

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    add-long/2addr v11, v4

    sub-long v17, v11, v21

    goto :goto_0

    :cond_1
    move-wide/from16 v17, v19

    :goto_0
    iget v0, v15, Lcom/ss/android/socialbase/downloader/iw/dq;->ox:I
    :try_end_3
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    int-to-long v11, v0

    move-wide/from16 v23, v13

    add-long v13, v4, v11

    cmp-long v25, v13, v17

    if-lez v25, :cond_7

    add-long v17, v17, v21

    cmp-long v19, v13, v17

    if-lez v19, :cond_2

    sub-long v19, v13, v17

    sub-long v11, v11, v19

    long-to-int v12, v11

    if-lez v12, :cond_2

    if-ge v12, v0, :cond_2

    :try_start_4
    iput v12, v15, Lcom/ss/android/socialbase/downloader/iw/dq;->ox:I

    move-wide/from16 v13, v17

    goto :goto_1

    :catchall_0
    move-exception v0

    move-wide/from16 v26, v4

    const/16 v18, 0x0

    goto/16 :goto_1a

    :catch_0
    move-exception v0

    move-wide/from16 v26, v4

    const/16 v18, 0x0

    goto/16 :goto_1f

    :cond_2
    :goto_1
    iput-wide v13, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->i:J

    invoke-interface {v9, v15}, Lcom/ss/android/socialbase/downloader/iw/s;->d(Lcom/ss/android/socialbase/downloader/iw/dq;)V
    :try_end_4
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    new-array v0, v6, [Ljava/io/Closeable;

    aput-object v10, v0, v7

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    :try_start_5
    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/iw/ox;->d()Lcom/ss/android/socialbase/downloader/iw/dq;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iput v8, v0, Lcom/ss/android/socialbase/downloader/iw/dq;->ox:I

    invoke-interface {v9, v0}, Lcom/ss/android/socialbase/downloader/iw/s;->d(Lcom/ss/android/socialbase/downloader/iw/dq;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    const/4 v9, 0x0

    goto :goto_3

    :catchall_1
    nop

    move-object v9, v0

    goto :goto_3

    :catchall_2
    nop

    goto :goto_2

    :goto_3
    if-eqz v9, :cond_3

    invoke-interface {v3, v9}, Lcom/ss/android/socialbase/downloader/iw/ox;->dq(Lcom/ss/android/socialbase/downloader/iw/dq;)V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->mn:J

    cmp-long v0, v13, v4

    if-lez v0, :cond_6

    iget-object v15, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->q:Lcom/ss/android/socialbase/downloader/mn/dq;

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->mp:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->ia:Ljava/lang/String;

    iget-object v8, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->kk:Ljava/lang/String;

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->o:Ljava/lang/String;

    iget-boolean v10, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->wp:Z

    if-nez v10, :cond_5

    iget-boolean v10, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->e:Z

    if-eqz v10, :cond_4

    goto :goto_4

    :cond_4
    const/16 v20, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/16 v20, 0x1

    :goto_5
    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->jy:Lcom/ss/android/socialbase/downloader/network/kk;

    iget-object v7, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->ce:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    sub-long v23, v13, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v10, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->mn:J

    iget-wide v12, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->iw:J

    sub-long/2addr v10, v12

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v25

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    invoke-static/range {v15 .. v26}, Lcom/ss/android/socialbase/downloader/p/dq;->dq(Lcom/ss/android/socialbase/downloader/mn/dq;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/android/socialbase/downloader/network/kk;Lcom/ss/android/socialbase/downloader/exception/BaseException;JJ)V

    :cond_6
    :goto_6
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;

    invoke-interface {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/iw/iw;->ox(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/kk;)V

    return-void

    :cond_7
    :try_start_7
    iput-wide v13, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->i:J

    invoke-interface {v9, v15}, Lcom/ss/android/socialbase/downloader/iw/s;->d(Lcom/ss/android/socialbase/downloader/iw/dq;)V
    :try_end_7
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-wide/from16 v11, v17

    :goto_7
    :try_start_8
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->ji:Z
    :try_end_8
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_d

    if-eqz v0, :cond_b

    :try_start_9
    monitor-enter p0
    :try_end_9
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :try_start_a
    iput-boolean v7, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->ji:Z

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->e:Z

    if-nez v0, :cond_a

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->wp:Z

    if-nez v0, :cond_a

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    :try_start_b
    iget-object v15, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;

    monitor-enter v15
    :try_end_b
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    const/16 v17, 0x1

    const/16 v18, 0x0

    :try_start_c
    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->gh:J

    cmp-long v0, v6, v23

    if-eqz v0, :cond_9

    const-string v0, "SegmentReader"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "loopAndRead:  change readEnd = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", segmentNewEndOffset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->gh:J

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", segment = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/iw/mp;->mp()J

    move-result-wide v11

    cmp-long v0, v13, v11

    if-lez v0, :cond_9

    add-long v6, v11, v21

    sub-long v21, v13, v6

    cmp-long v0, v21, v23

    if-lez v0, :cond_8

    const-string v0, "SegmentReader"

    const-string v8, "loopAndRead: redundant = "
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-wide/from16 v26, v4

    :try_start_d
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_9

    :catchall_4
    move-exception v0

    move-wide/from16 v26, v4

    goto :goto_9

    :cond_8
    move-wide/from16 v26, v4

    :goto_8
    :try_start_e
    iput-wide v6, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->i:J

    monitor-exit v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    move-wide v13, v6

    goto/16 :goto_10

    :catchall_5
    move-exception v0

    move-wide v13, v6

    goto :goto_9

    :cond_9
    move-wide/from16 v26, v4

    :try_start_f
    monitor-exit v15

    goto :goto_f

    :goto_9
    monitor-exit v15
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v0
    :try_end_10
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catchall_6
    move-exception v0

    :goto_a
    const/4 v15, 0x0

    goto/16 :goto_1a

    :catch_1
    move-exception v0

    :goto_b
    const/4 v15, 0x0

    goto/16 :goto_1f

    :catchall_7
    move-exception v0

    move-wide/from16 v26, v4

    const/16 v17, 0x1

    :goto_c
    const/16 v18, 0x0

    goto :goto_a

    :catch_2
    move-exception v0

    move-wide/from16 v26, v4

    const/16 v17, 0x1

    :goto_d
    const/16 v18, 0x0

    goto :goto_b

    :catchall_8
    move-exception v0

    move-wide/from16 v26, v4

    const/16 v17, 0x1

    const/16 v18, 0x0

    goto :goto_e

    :cond_a
    move-wide/from16 v26, v4

    const/16 v17, 0x1

    const/16 v18, 0x0

    :try_start_11
    new-instance v0, Lcom/ss/android/socialbase/downloader/iw/f;

    const-string v4, "loopAndRead"

    invoke-direct {v0, v4}, Lcom/ss/android/socialbase/downloader/iw/f;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_9
    move-exception v0

    :goto_e
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    :try_start_12
    throw v0

    :cond_b
    move-wide/from16 v26, v4

    const/16 v17, 0x1

    const/16 v18, 0x0

    :goto_f
    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/iw/ox;->d()Lcom/ss/android/socialbase/downloader/iw/dq;

    move-result-object v15
    :try_end_12
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :try_start_13
    iget-object v0, v15, Lcom/ss/android/socialbase/downloader/iw/dq;->dq:[B

    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, v15, Lcom/ss/android/socialbase/downloader/iw/dq;->ox:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_c

    invoke-interface {v9, v15}, Lcom/ss/android/socialbase/downloader/iw/s;->d(Lcom/ss/android/socialbase/downloader/iw/dq;)V

    const/4 v9, 0x0

    goto :goto_10

    :catchall_a
    move-exception v0

    goto/16 :goto_1a

    :catch_3
    move-exception v0

    goto/16 :goto_1f

    :cond_c
    int-to-long v4, v0

    add-long/2addr v13, v4

    cmp-long v6, v13, v11

    if-lez v6, :cond_14

    add-long v21, v11, v21

    cmp-long v6, v13, v21

    if-lez v6, :cond_d

    sub-long v6, v13, v21

    sub-long/2addr v4, v6

    long-to-int v5, v4

    if-lez v5, :cond_d

    if-ge v5, v0, :cond_d

    iput v5, v15, Lcom/ss/android/socialbase/downloader/iw/dq;->ox:I

    move-wide/from16 v13, v21

    :cond_d
    iput-wide v13, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->i:J

    invoke-interface {v9, v15}, Lcom/ss/android/socialbase/downloader/iw/s;->d(Lcom/ss/android/socialbase/downloader/iw/dq;)V
    :try_end_13
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    :try_start_14
    const-string v0, "SegmentReader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "loopAndRead: bytesRead = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v5, v13, v26

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->d:Lcom/ss/android/socialbase/downloader/iw/fw;

    iget-object v5, v5, Lcom/ss/android/socialbase/downloader/iw/fw;->dq:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    cmp-long v0, v11, v23

    if-lez v0, :cond_e

    cmp-long v0, v11, v19

    if-eqz v0, :cond_e

    cmp-long v0, v13, v11

    if-lez v0, :cond_f

    :cond_e
    const/4 v4, 0x1

    goto :goto_11

    :cond_f
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v4, "range[%d, %d] , but readCurrent[%d] , readStart[%d]"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v5, v11, v18

    aput-object v6, v11, v17

    const/4 v5, 0x2

    aput-object v7, v11, v5

    const/4 v5, 0x3

    aput-object v8, v11, v5

    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x41b

    invoke-direct {v0, v5, v4}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_14
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :goto_11
    new-array v0, v4, [Ljava/io/Closeable;

    aput-object v10, v0, v18

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    if-eqz v9, :cond_10

    :try_start_15
    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/iw/ox;->d()Lcom/ss/android/socialbase/downloader/iw/dq;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    const/4 v4, -0x1

    :try_start_16
    iput v4, v0, Lcom/ss/android/socialbase/downloader/iw/dq;->ox:I

    invoke-interface {v9, v0}, Lcom/ss/android/socialbase/downloader/iw/s;->d(Lcom/ss/android/socialbase/downloader/iw/dq;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    :cond_10
    :goto_12
    const/4 v9, 0x0

    goto :goto_13

    :catchall_b
    nop

    move-object v9, v0

    goto :goto_13

    :catchall_c
    nop

    goto :goto_12

    :goto_13
    if-eqz v9, :cond_11

    invoke-interface {v3, v9}, Lcom/ss/android/socialbase/downloader/iw/ox;->dq(Lcom/ss/android/socialbase/downloader/iw/dq;)V

    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->mn:J

    cmp-long v0, v13, v26

    if-lez v0, :cond_6

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->q:Lcom/ss/android/socialbase/downloader/mn/dq;

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->mp:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->ia:Ljava/lang/String;

    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->kk:Ljava/lang/String;

    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->o:Ljava/lang/String;

    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->wp:Z

    if-nez v7, :cond_13

    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->e:Z

    if-eqz v7, :cond_12

    goto :goto_14

    :cond_12
    const/16 v33, 0x0

    goto :goto_15

    :cond_13
    :goto_14
    const/16 v33, 0x1

    :goto_15
    iget-object v7, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->jy:Lcom/ss/android/socialbase/downloader/network/kk;

    iget-object v8, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->ce:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    sub-long v36, v13, v26

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v10, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->mn:J

    iget-wide v12, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->iw:J

    sub-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v38

    move-object/from16 v28, v0

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v34, v7

    move-object/from16 v35, v8

    invoke-static/range {v28 .. v39}, Lcom/ss/android/socialbase/downloader/p/dq;->dq(Lcom/ss/android/socialbase/downloader/mn/dq;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/android/socialbase/downloader/network/kk;Lcom/ss/android/socialbase/downloader/exception/BaseException;JJ)V

    goto/16 :goto_6

    :cond_14
    :try_start_17
    iput-wide v13, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->i:J

    invoke-interface {v9, v15}, Lcom/ss/android/socialbase/downloader/iw/s;->d(Lcom/ss/android/socialbase/downloader/iw/dq;)V
    :try_end_17
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    move-wide/from16 v4, v26

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    goto/16 :goto_7

    :catchall_d
    move-exception v0

    move-wide/from16 v26, v4

    goto/16 :goto_c

    :catch_4
    move-exception v0

    move-wide/from16 v26, v4

    goto/16 :goto_d

    :catchall_e
    move-exception v0

    move-wide/from16 v26, v4

    const/16 v18, 0x0

    move-wide/from16 v13, v26

    goto/16 :goto_1a

    :catch_5
    move-exception v0

    move-wide/from16 v26, v4

    const/16 v18, 0x0

    move-wide/from16 v13, v26

    goto/16 :goto_1f

    :catchall_f
    move-exception v0

    move-wide/from16 v26, v4

    const/16 v18, 0x0

    :goto_16
    move-wide/from16 v13, v26

    const/4 v9, 0x0

    goto/16 :goto_1a

    :catch_6
    move-exception v0

    move-wide/from16 v26, v4

    const/16 v18, 0x0

    :goto_17
    move-wide/from16 v13, v26

    const/4 v9, 0x0

    goto/16 :goto_1f

    :cond_15
    move-wide/from16 v26, v4

    const/16 v18, 0x0

    :try_start_18
    new-instance v0, Lcom/ss/android/socialbase/downloader/iw/f;

    const-string v4, "probe"

    invoke-direct {v0, v4}, Lcom/ss/android/socialbase/downloader/iw/f;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_10

    :catchall_10
    move-exception v0

    goto :goto_16

    :catch_7
    move-exception v0

    goto :goto_17

    :catchall_11
    move-exception v0

    move-wide/from16 v26, v4

    const/16 v18, 0x0

    :goto_18
    move-wide/from16 v13, v26

    const/4 v9, 0x0

    goto/16 :goto_a

    :catch_8
    move-exception v0

    move-wide/from16 v26, v4

    const/16 v18, 0x0

    :goto_19
    move-wide/from16 v13, v26

    const/4 v9, 0x0

    goto/16 :goto_b

    :cond_16
    move-wide/from16 v26, v4

    const/16 v18, 0x0

    :try_start_19
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/iw;

    const-string v4, "the content-length is 0, contentLength = "

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3ec

    invoke-direct {v0, v5, v4}, Lcom/ss/android/socialbase/downloader/exception/iw;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_12
    move-exception v0

    goto :goto_18

    :catch_9
    move-exception v0

    goto :goto_19

    :cond_17
    move-wide/from16 v26, v4

    const/16 v18, 0x0

    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance v4, Ljava/io/IOException;

    const-string v5, "inputStream is null"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x412

    invoke-direct {v0, v5, v4}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_19
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_12

    :catchall_13
    move-exception v0

    move-wide/from16 v26, v4

    const/16 v18, 0x0

    move-wide/from16 v13, v26

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_a

    :catch_a
    move-exception v0

    move-wide/from16 v26, v4

    const/16 v18, 0x0

    move-wide/from16 v13, v26

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_b

    :goto_1a
    :try_start_1a
    const-string v4, "SegmentReader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "loopAndRead: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",stack = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_15

    :try_start_1b
    const-string v4, "loopAndRead"

    invoke-static {v0, v4}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1b
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1b .. :try_end_1b} :catch_b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_15

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/io/Closeable;

    aput-object v10, v0, v18

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    if-eqz v9, :cond_19

    if-nez v15, :cond_18

    :try_start_1c
    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/iw/ox;->d()Lcom/ss/android/socialbase/downloader/iw/dq;

    move-result-object v15

    :cond_18
    const/4 v4, -0x1

    goto :goto_1b

    :catchall_14
    nop

    goto :goto_1c

    :goto_1b
    iput v4, v15, Lcom/ss/android/socialbase/downloader/iw/dq;->ox:I

    invoke-interface {v9, v15}, Lcom/ss/android/socialbase/downloader/iw/s;->d(Lcom/ss/android/socialbase/downloader/iw/dq;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_14

    const/4 v9, 0x0

    goto :goto_1d

    :cond_19
    :goto_1c
    move-object v9, v15

    :goto_1d
    if-eqz v9, :cond_1a

    invoke-interface {v3, v9}, Lcom/ss/android/socialbase/downloader/iw/ox;->dq(Lcom/ss/android/socialbase/downloader/iw/dq;)V

    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->mn:J

    cmp-long v0, v13, v26

    if-lez v0, :cond_6

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->q:Lcom/ss/android/socialbase/downloader/mn/dq;

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->mp:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->ia:Ljava/lang/String;

    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->kk:Ljava/lang/String;

    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->o:Ljava/lang/String;

    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->wp:Z

    if-nez v7, :cond_1c

    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->e:Z

    if-eqz v7, :cond_1b

    goto :goto_1e

    :cond_1b
    const/16 v33, 0x0

    goto/16 :goto_15

    :cond_1c
    :goto_1e
    const/16 v33, 0x1

    goto/16 :goto_15

    :catchall_15
    move-exception v0

    const/4 v4, 0x1

    goto :goto_20

    :catch_b
    move-exception v0

    :try_start_1d
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->ce:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    throw v0

    :goto_1f
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->ce:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_15

    :goto_20
    new-array v5, v4, [Ljava/io/Closeable;

    aput-object v10, v5, v18

    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    if-eqz v9, :cond_1e

    if-nez v15, :cond_1d

    :try_start_1e
    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/iw/ox;->d()Lcom/ss/android/socialbase/downloader/iw/dq;

    move-result-object v15

    :cond_1d
    const/4 v5, -0x1

    goto :goto_21

    :catchall_16
    nop

    goto :goto_22

    :goto_21
    iput v5, v15, Lcom/ss/android/socialbase/downloader/iw/dq;->ox:I

    invoke-interface {v9, v15}, Lcom/ss/android/socialbase/downloader/iw/s;->d(Lcom/ss/android/socialbase/downloader/iw/dq;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_16

    const/4 v9, 0x0

    goto :goto_23

    :cond_1e
    :goto_22
    move-object v9, v15

    :goto_23
    if-eqz v9, :cond_1f

    invoke-interface {v3, v9}, Lcom/ss/android/socialbase/downloader/iw/ox;->dq(Lcom/ss/android/socialbase/downloader/iw/dq;)V

    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->mn:J

    cmp-long v3, v13, v26

    if-lez v3, :cond_22

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->q:Lcom/ss/android/socialbase/downloader/mn/dq;

    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->mp:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->ia:Ljava/lang/String;

    iget-object v7, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->kk:Ljava/lang/String;

    iget-object v8, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->o:Ljava/lang/String;

    iget-boolean v9, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->wp:Z

    if-nez v9, :cond_21

    iget-boolean v9, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->e:Z

    if-eqz v9, :cond_20

    goto :goto_24

    :cond_20
    const/16 v33, 0x0

    goto :goto_25

    :cond_21
    :goto_24
    const/16 v33, 0x1

    :goto_25
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->jy:Lcom/ss/android/socialbase/downloader/network/kk;

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->ce:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    sub-long v36, v13, v26

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v11, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->mn:J

    iget-wide v13, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->iw:J

    sub-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v38

    move-object/from16 v28, v3

    move-object/from16 v34, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v35, v9

    invoke-static/range {v28 .. v39}, Lcom/ss/android/socialbase/downloader/p/dq;->dq(Lcom/ss/android/socialbase/downloader/mn/dq;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/android/socialbase/downloader/network/kk;Lcom/ss/android/socialbase/downloader/exception/BaseException;JJ)V

    :cond_22
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;

    invoke-interface {v3, v1, v2}, Lcom/ss/android/socialbase/downloader/iw/iw;->ox(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/kk;)V

    throw v0
.end method


# virtual methods
.method public d()J
    .locals 5

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->le:J

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/iw/mp;->ox()J

    move-result-wide v3

    add-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(J)V
    .locals 6

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->i:J

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->j:Lcom/ss/android/socialbase/downloader/kk/s;

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/ss/android/socialbase/downloader/kk/s;->dq(JJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->er:Z

    return-void
.end method

.method public dq(JJ)J
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->j:Lcom/ss/android/socialbase/downloader/kk/s;

    if-nez v0, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/kk/s;->d(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public dq()V
    .locals 7

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->d:Lcom/ss/android/socialbase/downloader/iw/fw;

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/iw/mp;->ox()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->le:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->le:J

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/iw/fw;->dq(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->i:J

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method public dq(Ljava/util/concurrent/Future;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->k:Ljava/util/concurrent/Future;

    return-void
.end method

.method public dq(Z)V
    .locals 3

    const-string v0, "SegmentReader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reconnect: threadIndex = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->ox:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->kx:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->e:Z

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->ji:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/mp;->o()V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->h:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public dq(J)Z
    .locals 6

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->r:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-gtz v5, :cond_0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    return v2

    :cond_0
    cmp-long v5, p1, v0

    if-lez v5, :cond_1

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    return v2

    :cond_1
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->gh:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->ji:Z

    return p1
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/iw/fw;)Z
    .locals 2

    iget v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->u:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->u:I

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->d:Lcom/ss/android/socialbase/downloader/iw/fw;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/iw/fw;->d(Lcom/ss/android/socialbase/downloader/iw/mp;)V

    :cond_1
    invoke-virtual {p1, p0}, Lcom/ss/android/socialbase/downloader/iw/fw;->dq(Lcom/ss/android/socialbase/downloader/iw/mp;)V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->d:Lcom/ss/android/socialbase/downloader/iw/fw;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/mp;->ig()V

    return v1
.end method

.method public ia()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->cd:J

    return-wide v0
.end method

.method public iw()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/iw/mp;->dq(Z)V

    return-void
.end method

.method public mn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->er:Z

    return v0
.end method

.method public ox()J
    .locals 8

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->i:J

    iget-wide v3, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->cd:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    cmp-long v7, v1, v3

    if-lez v7, :cond_0

    sub-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-wide v5

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->wn:Z

    return-void
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->i:J

    return-wide v0
.end method

.method public run()V
    .locals 5

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->h:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;

    invoke-interface {v1, p0}, Lcom/ss/android/socialbase/downloader/iw/iw;->dq(Lcom/ss/android/socialbase/downloader/iw/mp;)V

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->d:Lcom/ss/android/socialbase/downloader/iw/fw;

    invoke-virtual {v1, p0}, Lcom/ss/android/socialbase/downloader/iw/fw;->dq(Lcom/ss/android/socialbase/downloader/iw/mp;)V

    :goto_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->d:Lcom/ss/android/socialbase/downloader/iw/fw;

    invoke-interface {v1, p0, v2}, Lcom/ss/android/socialbase/downloader/iw/iw;->dq(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/fw;)Lcom/ss/android/socialbase/downloader/iw/kk;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "SegmentReader"

    if-nez v1, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "no more segment, thread_index = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->ox:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v1

    goto/16 :goto_6

    :cond_0
    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->dq:Lcom/ss/android/socialbase/downloader/iw/kk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, v1}, Lcom/ss/android/socialbase/downloader/iw/mp;->dq(Lcom/ss/android/socialbase/downloader/iw/kk;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->fw:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/ss/android/socialbase/downloader/iw/o; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->dq:Lcom/ss/android/socialbase/downloader/iw/kk;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;

    :goto_1
    invoke-interface {v2, p0, v1}, Lcom/ss/android/socialbase/downloader/iw/iw;->dq(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/kk;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v2

    goto/16 :goto_5

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_1
    :try_start_4
    iget-boolean v3, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->wp:Z

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "download segment failed, segment = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", thread_index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->ox:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", failedException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->ce:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/ss/android/socialbase/downloader/iw/o; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    :try_start_5
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->dq:Lcom/ss/android/socialbase/downloader/iw/kk;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;

    :goto_2
    invoke-interface {v2, p0, v1}, Lcom/ss/android/socialbase/downloader/iw/iw;->dq(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/kk;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_6
    const-string v4, "run: SegmentApplyException, e = "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->bl:I

    const/16 v4, 0x32

    if-lt v3, v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "segment apply failed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->bl:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "times, thread_index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->ox:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->dq:Lcom/ss/android/socialbase/downloader/iw/kk;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :goto_4
    :try_start_8
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->d:Lcom/ss/android/socialbase/downloader/iw/fw;

    invoke-virtual {v1, p0}, Lcom/ss/android/socialbase/downloader/iw/fw;->d(Lcom/ss/android/socialbase/downloader/iw/mp;)V

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;

    invoke-interface {v1, p0}, Lcom/ss/android/socialbase/downloader/iw/iw;->d(Lcom/ss/android/socialbase/downloader/iw/mp;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->h:Ljava/lang/Thread;

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    :try_start_9
    iput v3, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->bl:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->dq:Lcom/ss/android/socialbase/downloader/iw/kk;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;

    goto/16 :goto_1

    :goto_5
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->dq:Lcom/ss/android/socialbase/downloader/iw/kk;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;

    invoke-interface {v3, p0, v1}, Lcom/ss/android/socialbase/downloader/iw/iw;->dq(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/kk;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_6
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->d:Lcom/ss/android/socialbase/downloader/iw/fw;

    invoke-virtual {v1, p0}, Lcom/ss/android/socialbase/downloader/iw/fw;->d(Lcom/ss/android/socialbase/downloader/iw/mp;)V

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;

    invoke-interface {v1, p0}, Lcom/ss/android/socialbase/downloader/iw/iw;->d(Lcom/ss/android/socialbase/downloader/iw/mp;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->h:Ljava/lang/Thread;

    return-void

    :catchall_4
    move-exception v1

    :try_start_d
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->d:Lcom/ss/android/socialbase/downloader/iw/fw;

    invoke-virtual {v2, p0}, Lcom/ss/android/socialbase/downloader/iw/fw;->d(Lcom/ss/android/socialbase/downloader/iw/mp;)V

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->no:Lcom/ss/android/socialbase/downloader/iw/iw;

    invoke-interface {v2, p0}, Lcom/ss/android/socialbase/downloader/iw/iw;->d(Lcom/ss/android/socialbase/downloader/iw/mp;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->h:Ljava/lang/Thread;

    throw v1
.end method

.method public s()V
    .locals 3

    const-string v0, "SegmentReader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "close: threadIndex = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->ox:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->wp:Z

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->ji:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/mp;->o()V

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->k:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/mp;->k:Ljava/util/concurrent/Future;

    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.class Lcom/ss/android/socialbase/downloader/iw/mn;
.super Ljava/lang/Object;


# instance fields
.field private volatile cd:J

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/iw/ig;",
            ">;"
        }
    .end annotation
.end field

.field private final dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/iw/ig;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z

.field private fw:J

.field private volatile gh:J

.field private ia:Lcom/ss/android/socialbase/downloader/exception/BaseException;

.field private final ig:Lcom/ss/android/socialbase/downloader/dq/dq;

.field private final iw:Lcom/ss/android/socialbase/downloader/ia/iw;

.field private final jy:J

.field private volatile kk:Z

.field private final mn:Lcom/ss/android/socialbase/downloader/iw/ox;

.field private final mp:Z

.field private volatile no:Z

.field private volatile o:Z

.field private final ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field private final p:Lcom/ss/android/socialbase/downloader/downloader/o;

.field private final q:J

.field private final s:Lcom/ss/android/socialbase/downloader/mn/dq;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/ia/iw;Lcom/ss/android/socialbase/downloader/iw/ox;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->dq:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->kk:Z

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->o:Z

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->no:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->cd:J

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->gh:J

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->e()Lcom/ss/android/socialbase/downloader/downloader/o;

    move-result-object v3

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->p:Lcom/ss/android/socialbase/downloader/downloader/o;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->iw:Lcom/ss/android/socialbase/downloader/ia/iw;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->mn:Lcom/ss/android/socialbase/downloader/iw/ox;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/dq/dq;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->ig:Lcom/ss/android/socialbase/downloader/dq/dq;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->s:Lcom/ss/android/socialbase/downloader/mn/dq;

    const-string p2, "sync_strategy"

    invoke-virtual {p1, p2, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->mp:Z

    if-eqz p2, :cond_1

    const-string p2, "sync_interval_ms_fg"

    const/16 v1, 0x1388

    invoke-virtual {p1, p2, v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p2

    int-to-long v1, p2

    const-string p2, "sync_interval_ms_bg"

    const/16 v3, 0x3e8

    invoke-virtual {p1, p2, v3}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p2

    int-to-long v3, p2

    const-wide/16 v5, 0x1f4

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->q:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->jy:J

    goto :goto_1

    :cond_1
    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->q:J

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->jy:J

    :goto_1
    const-string p2, "monitor_rw"

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result p1

    if-ne p1, p3, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->f:Z

    return-void
.end method

.method private d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/iw/ig;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/iw/ig;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/ig;->ox()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dq(JZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->gh:J

    sub-long v0, p1, v0

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->mp:Z

    if-eqz v2, :cond_1

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->ig:Lcom/ss/android/socialbase/downloader/dq/dq;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/dq/dq;->d()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->q:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->jy:J

    :goto_0
    cmp-long p3, v0, v2

    if-lez p3, :cond_2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->cd:J

    sub-long/2addr v2, v4

    if-nez p3, :cond_3

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/ss/android/socialbase/downloader/iw/mn;->dq(JJ)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/mn;->ox()V

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->gh:J

    return-void
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/iw/s;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->d:Ljava/util/List;

    check-cast p1, Lcom/ss/android/socialbase/downloader/iw/ig;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private dq(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/iw/ig;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/iw/ig;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/ig;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dq(Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/iw/ig;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/socialbase/downloader/iw/kk;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/iw/ig;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/ig;->s()Lcom/ss/android/socialbase/downloader/iw/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/iw/kk;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/socialbase/downloader/iw/kk;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/iw/kk;-><init>(Lcom/ss/android/socialbase/downloader/iw/kk;)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/kk;->p()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/iw/kk;->dq(J)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/kk;->iw()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dq(JJ)Z
    .locals 3

    const-wide/32 v0, 0x10000

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const-wide/16 p1, 0x1f4

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private ox()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->p:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->dq:Ljava/util/List;

    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->d:Ljava/util/List;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v7

    invoke-interface {v4, v7}, Lcom/ss/android/socialbase/downloader/downloader/o;->ig(I)Ljava/util/Map;

    move-result-object v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/util/HashMap;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, v5}, Lcom/ss/android/socialbase/downloader/iw/mn;->dq(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v8, 0x1

    :try_start_1
    invoke-direct {p0, v5}, Lcom/ss/android/socialbase/downloader/iw/mn;->d(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x1

    goto :goto_1

    :catchall_0
    move-exception v9

    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v9, 0x0

    :goto_1
    invoke-direct {p0, v5, v7}, Lcom/ss/android/socialbase/downloader/iw/mn;->dq(Ljava/util/List;Ljava/util/Map;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    invoke-direct {p0, v6}, Lcom/ss/android/socialbase/downloader/iw/mn;->ox(Ljava/util/List;)V

    invoke-interface {v5, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v6}, Ljava/util/List;->clear()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v9, :cond_3

    invoke-virtual {v3, v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateRealDownloadTime(Z)V

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v5

    invoke-interface {v4, v5, v7}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(ILjava/util/Map;)Z

    invoke-interface {v4, v3}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->cd:J

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->fw:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->fw:J

    :cond_4
    return-void

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private ox(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/iw/ig;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/iw/ig;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/ig;->p()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->o:Z

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->kk:Z

    return-void
.end method

.method public dq()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->no:Z

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->kk:Z

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/iw/ig;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/mn;->dq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/iw/p;)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->o:Z

    if-nez v0, :cond_24

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->no:Z

    if-eqz v0, :cond_0

    goto/16 :goto_31

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/d;->s()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->ia:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->iw:Lcom/ss/android/socialbase/downloader/ia/iw;

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->mn:Lcom/ss/android/socialbase/downloader/iw/ox;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-boolean v14, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->f:Z

    const-wide/16 v10, 0x0

    :try_start_0
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateRealStartDownloadTime()V
    :try_end_0
    .catch Lcom/ss/android/socialbase/downloader/iw/f; {:try_start_0 .. :try_end_0} :catch_18
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_16
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    move-wide v12, v10

    move-wide v15, v12

    move-wide/from16 v17, v15

    const/4 v2, 0x0

    :goto_0
    if-eqz v14, :cond_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12
    :try_end_1
    .catch Lcom/ss/android/socialbase/downloader/iw/f; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    move v9, v2

    move-object/from16 v21, v4

    move-wide/from16 v22, v5

    :goto_1
    move-wide/from16 v17, v15

    :goto_2
    move-wide v15, v10

    goto/16 :goto_1d

    :catch_0
    move-exception v0

    move v9, v2

    move-wide/from16 v22, v5

    :goto_3
    move-wide/from16 v17, v15

    :goto_4
    move-wide v15, v10

    goto/16 :goto_27

    :catch_1
    move-exception v0

    move v9, v2

    move-wide/from16 v22, v5

    :goto_5
    move-wide/from16 v17, v15

    goto/16 :goto_2b

    :cond_1
    :goto_6
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/iw/p;->dq()Lcom/ss/android/socialbase/downloader/iw/dq;

    move-result-object v9
    :try_end_2
    .catch Lcom/ss/android/socialbase/downloader/iw/f; {:try_start_2 .. :try_end_2} :catch_12
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    if-eqz v14, :cond_2

    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v21
    :try_end_3
    .catch Lcom/ss/android/socialbase/downloader/iw/f; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-long v21, v21, v12

    add-long v21, v21, v10

    move-wide/from16 v10, v21

    :cond_2
    move-object/from16 v21, v4

    :try_start_4
    iget v4, v9, Lcom/ss/android/socialbase/downloader/iw/dq;->ox:I
    :try_end_4
    .catch Lcom/ss/android/socialbase/downloader/iw/f; {:try_start_4 .. :try_end_4} :catch_10
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    move-wide/from16 v22, v5

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    :try_start_5
    iget-object v4, v9, Lcom/ss/android/socialbase/downloader/iw/dq;->d:Lcom/ss/android/socialbase/downloader/iw/s;

    invoke-direct {v1, v4}, Lcom/ss/android/socialbase/downloader/iw/mn;->dq(Lcom/ss/android/socialbase/downloader/iw/s;)V

    invoke-interface {v0, v9}, Lcom/ss/android/socialbase/downloader/iw/ox;->dq(Lcom/ss/android/socialbase/downloader/iw/dq;)V

    move-object/from16 v4, v21

    :goto_7
    move-wide/from16 v5, v22

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_8
    move v9, v2

    goto :goto_1

    :catch_2
    move-exception v0

    move v9, v2

    move-wide/from16 v17, v15

    move-object/from16 v4, v21

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_9
    move v9, v2

    move-wide/from16 v17, v15

    :goto_a
    move-object/from16 v4, v21

    goto/16 :goto_2b

    :cond_3
    if-eqz v14, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5
    :try_end_5
    .catch Lcom/ss/android/socialbase/downloader/iw/f; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-wide v12, v5

    :cond_4
    :try_start_6
    iget-object v5, v9, Lcom/ss/android/socialbase/downloader/iw/dq;->d:Lcom/ss/android/socialbase/downloader/iw/s;

    invoke-interface {v5, v9}, Lcom/ss/android/socialbase/downloader/iw/s;->d(Lcom/ss/android/socialbase/downloader/iw/dq;)V
    :try_end_6
    .catch Lcom/ss/android/socialbase/downloader/iw/f; {:try_start_6 .. :try_end_6} :catch_e
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    if-eqz v14, :cond_5

    :try_start_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5
    :try_end_7
    .catch Lcom/ss/android/socialbase/downloader/iw/f; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    sub-long/2addr v5, v12

    add-long/2addr v5, v15

    move-wide/from16 v28, v17

    move-wide/from16 v17, v5

    move-wide/from16 v5, v28

    goto :goto_b

    :cond_5
    move-wide/from16 v5, v17

    move-wide/from16 v17, v15

    :goto_b
    :try_start_8
    invoke-interface {v0, v9}, Lcom/ss/android/socialbase/downloader/iw/ox;->dq(Lcom/ss/android/socialbase/downloader/iw/dq;)V

    iget-boolean v9, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->kk:Z
    :try_end_8
    .catch Lcom/ss/android/socialbase/downloader/iw/f; {:try_start_8 .. :try_end_8} :catch_c
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    if-eqz v9, :cond_b

    :try_start_9
    iget-boolean v9, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->o:Z

    if-nez v9, :cond_7

    iget-boolean v9, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->no:Z

    if-eqz v9, :cond_6

    goto :goto_d

    :cond_6
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->kk:Z
    :try_end_9
    .catch Lcom/ss/android/socialbase/downloader/iw/f; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_11

    :catchall_2
    move-exception v0

    move v9, v2

    goto/16 :goto_2

    :catch_4
    move-exception v0

    move v9, v2

    move-wide v15, v10

    move-object/from16 v4, v21

    goto/16 :goto_27

    :catch_5
    move-exception v0

    :goto_c
    move v9, v2

    goto :goto_a

    :cond_7
    :goto_d
    if-lez v2, :cond_8

    int-to-long v4, v2

    :try_start_a
    invoke-interface {v3, v4, v5}, Lcom/ss/android/socialbase/downloader/ia/iw;->d(J)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_e

    :catchall_3
    nop

    :cond_8
    :goto_e
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->no:Z

    if-nez v0, :cond_9

    :try_start_b
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/iw/mn;->ox()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_f

    :catchall_4
    move-exception v0

    move-object v2, v0

    const-string v0, "MultiSegmentWriter"

    const-string v3, "loopAndWrite: finally sync, e = "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_9
    :goto_f
    const/4 v2, 0x0

    :goto_10
    monitor-enter p0

    :try_start_c
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->dq:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/iw/mn;->ox(Ljava/util/List;)V

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    invoke-virtual/range {v21 .. v21}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    sub-long v3, v3, v22

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v12, v5, v7

    move-wide v15, v10

    move-wide v10, v3

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->s:Lcom/ss/android/socialbase/downloader/mn/dq;

    invoke-virtual/range {v21 .. v21}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->o:Z

    iget-boolean v8, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->no:Z

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->ia:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move-object v0, v3

    iget-wide v3, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->fw:J

    move-wide/from16 v19, v3

    move-object/from16 v4, v21

    const/16 v21, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v21}, Lcom/ss/android/socialbase/downloader/p/dq;->dq(Lcom/ss/android/socialbase/downloader/mn/dq;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/kk;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    if-eqz v2, :cond_24

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->o:Z

    if-nez v0, :cond_24

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->no:Z

    if-nez v0, :cond_24

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->ia:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-eqz v0, :cond_a

    goto/16 :goto_31

    :cond_a
    :try_start_d
    const-string v0, "loopAndWrite_finally"

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_d
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_31

    :catch_6
    move-exception v0

    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->ia:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    throw v0

    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0

    :cond_b
    const/4 v9, 0x0

    :goto_11
    add-int/2addr v2, v4

    const/high16 v4, 0x10000

    if-lt v2, v4, :cond_f

    move-wide/from16 v24, v10

    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long v15, v9, v5

    const-wide/16 v26, 0x64

    cmp-long v4, v15, v26

    if-lez v4, :cond_10

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lcom/ss/android/socialbase/downloader/ia/iw;->d(J)Z

    move-result v2
    :try_end_f
    .catch Lcom/ss/android/socialbase/downloader/iw/f; {:try_start_f .. :try_end_f} :catch_a
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :try_start_10
    invoke-direct {v1, v9, v10, v2}, Lcom/ss/android/socialbase/downloader/iw/mn;->dq(JZ)V

    sget-boolean v2, Lcom/ss/android/socialbase/downloader/network/d;->dq:Z

    if-nez v2, :cond_e

    invoke-virtual/range {v21 .. v21}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual/range {v21 .. v21}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloadFromReserveWifi()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual/range {v21 .. v21}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_15

    :cond_c
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/s;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/exception/s;-><init>()V

    throw v0

    :catchall_6
    move-exception v0

    move-wide/from16 v15, v24

    :goto_12
    const/4 v9, 0x0

    goto/16 :goto_1d

    :catch_7
    move-exception v0

    move-object/from16 v4, v21

    move-wide/from16 v15, v24

    :goto_13
    const/4 v9, 0x0

    goto/16 :goto_27

    :catch_8
    move-exception v0

    move-object/from16 v4, v21

    move-wide/from16 v10, v24

    :goto_14
    const/4 v9, 0x0

    goto/16 :goto_2b

    :cond_d
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/ox;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/exception/ox;-><init>()V

    throw v0
    :try_end_10
    .catch Lcom/ss/android/socialbase/downloader/iw/f; {:try_start_10 .. :try_end_10} :catch_8
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :cond_e
    :goto_15
    move-wide/from16 v15, v17

    move-object/from16 v4, v21

    move-wide/from16 v5, v22

    const/4 v2, 0x0

    move-wide/from16 v17, v9

    move-wide/from16 v10, v24

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    :goto_16
    move v9, v2

    :goto_17
    move-wide/from16 v15, v24

    goto/16 :goto_1d

    :catch_9
    move-exception v0

    :goto_18
    move v9, v2

    :goto_19
    move-object/from16 v4, v21

    move-wide/from16 v15, v24

    goto/16 :goto_27

    :catch_a
    move-exception v0

    move v9, v2

    move-object/from16 v4, v21

    move-wide/from16 v10, v24

    goto/16 :goto_2b

    :cond_f
    move-wide/from16 v24, v10

    :cond_10
    move-wide/from16 v15, v17

    move-object/from16 v4, v21

    move-wide/from16 v10, v24

    move-wide/from16 v17, v5

    goto/16 :goto_7

    :catchall_8
    move-exception v0

    move-wide/from16 v24, v10

    goto :goto_16

    :catch_b
    move-exception v0

    move-wide/from16 v24, v10

    goto :goto_18

    :catch_c
    move-exception v0

    move-wide/from16 v24, v10

    goto/16 :goto_c

    :catchall_9
    move-exception v0

    :goto_1a
    move-wide/from16 v24, v10

    move v9, v2

    move-wide/from16 v17, v15

    goto :goto_17

    :catch_d
    move-exception v0

    :goto_1b
    move-wide/from16 v24, v10

    move v9, v2

    move-wide/from16 v17, v15

    goto :goto_19

    :catch_e
    move-exception v0

    :goto_1c
    move-wide/from16 v24, v10

    goto/16 :goto_9

    :catchall_a
    move-exception v0

    move-wide/from16 v22, v5

    goto :goto_1a

    :catch_f
    move-exception v0

    move-wide/from16 v22, v5

    goto :goto_1b

    :catch_10
    move-exception v0

    move-wide/from16 v22, v5

    goto :goto_1c

    :catchall_b
    move-exception v0

    move-object/from16 v21, v4

    move-wide/from16 v22, v5

    goto/16 :goto_8

    :catch_11
    move-exception v0

    move-object/from16 v21, v4

    move-wide/from16 v22, v5

    move v9, v2

    goto/16 :goto_3

    :catch_12
    move-exception v0

    move-object/from16 v21, v4

    move-wide/from16 v22, v5

    move v9, v2

    goto/16 :goto_5

    :catchall_c
    move-exception v0

    move-object/from16 v21, v4

    move-wide/from16 v22, v5

    move-wide v15, v10

    move-wide/from16 v17, v15

    goto/16 :goto_12

    :goto_1d
    :try_start_11
    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->o:Z

    if-nez v2, :cond_11

    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->no:Z

    if-eqz v2, :cond_12

    :cond_11
    move-object/from16 v4, v21

    goto/16 :goto_23

    :cond_12
    invoke-static {}, Lcom/ss/android/socialbase/downloader/ox/dq;->dq()Z

    move-result v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    if-eqz v2, :cond_13

    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    goto :goto_1e

    :catchall_d
    move-exception v0

    move-object v2, v0

    move-object/from16 v4, v21

    goto/16 :goto_2c

    :cond_13
    :goto_1e
    :try_start_13
    const-string v2, "MultiSegmentWriter"

    const-string v4, "loopAndWrite:  e = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_11

    :try_start_14
    const-string v2, "loopAndWrite"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_14
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_14 .. :try_end_14} :catch_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_11

    if-lez v9, :cond_14

    int-to-long v4, v9

    :try_start_15
    invoke-interface {v3, v4, v5}, Lcom/ss/android/socialbase/downloader/ia/iw;->d(J)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    goto :goto_1f

    :catchall_e
    nop

    :cond_14
    :goto_1f
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->no:Z

    if-nez v0, :cond_15

    :try_start_16
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/iw/mn;->ox()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    goto :goto_20

    :catchall_f
    move-exception v0

    move-object v2, v0

    const-string v0, "MultiSegmentWriter"

    const-string v3, "loopAndWrite: finally sync, e = "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_15
    :goto_20
    const/4 v2, 0x0

    :goto_21
    monitor-enter p0

    :try_start_17
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->dq:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/iw/mn;->ox(Ljava/util/List;)V

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_10

    invoke-virtual/range {v21 .. v21}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    sub-long v10, v3, v22

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v12, v3, v7

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->s:Lcom/ss/android/socialbase/downloader/mn/dq;

    invoke-virtual/range {v21 .. v21}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->o:Z

    iget-boolean v8, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->no:Z

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->ia:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move-object v0, v3

    iget-wide v3, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->fw:J

    move-wide/from16 v19, v3

    move-object/from16 v4, v21

    const/16 v21, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v21}, Lcom/ss/android/socialbase/downloader/p/dq;->dq(Lcom/ss/android/socialbase/downloader/mn/dq;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/kk;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    if-eqz v2, :cond_24

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->o:Z

    if-nez v0, :cond_24

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->no:Z

    if-nez v0, :cond_24

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->ia:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-eqz v0, :cond_16

    goto/16 :goto_31

    :cond_16
    :try_start_18
    const-string v0, "loopAndWrite_finally"

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_18
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_18 .. :try_end_18} :catch_13

    goto/16 :goto_31

    :catch_13
    move-exception v0

    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->ia:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    throw v0

    :catchall_10
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    throw v0

    :catchall_11
    move-exception v0

    move-object/from16 v4, v21

    :goto_22
    move-object v2, v0

    goto/16 :goto_2c

    :catch_14
    move-exception v0

    move-object/from16 v4, v21

    :try_start_1a
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->ia:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_12

    :catchall_12
    move-exception v0

    goto :goto_22

    :goto_23
    if-lez v9, :cond_17

    int-to-long v5, v9

    :try_start_1b
    invoke-interface {v3, v5, v6}, Lcom/ss/android/socialbase/downloader/ia/iw;->d(J)Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_13

    goto :goto_24

    :catchall_13
    nop

    :cond_17
    :goto_24
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->no:Z

    if-nez v0, :cond_18

    :try_start_1c
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/iw/mn;->ox()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_14

    goto :goto_25

    :catchall_14
    move-exception v0

    move-object v2, v0

    const-string v0, "MultiSegmentWriter"

    const-string v3, "loopAndWrite: finally sync, e = "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    :cond_18
    :goto_25
    const/4 v2, 0x0

    :goto_26
    monitor-enter p0

    :try_start_1d
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->dq:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/iw/mn;->ox(Ljava/util/List;)V

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_15

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v5

    sub-long v10, v5, v22

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v12, v5, v7

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->s:Lcom/ss/android/socialbase/downloader/mn/dq;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->o:Z

    iget-boolean v8, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->no:Z

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->ia:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move-object v0, v3

    move-object/from16 v21, v4

    iget-wide v3, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->fw:J

    move-wide/from16 v19, v3

    move-object/from16 v4, v21

    const/16 v21, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v21}, Lcom/ss/android/socialbase/downloader/p/dq;->dq(Lcom/ss/android/socialbase/downloader/mn/dq;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/kk;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    if-eqz v2, :cond_24

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->o:Z

    if-nez v0, :cond_24

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->no:Z

    if-nez v0, :cond_24

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->ia:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-eqz v0, :cond_19

    goto/16 :goto_31

    :cond_19
    :try_start_1e
    const-string v0, "loopAndWrite_finally"

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1e
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1e .. :try_end_1e} :catch_15

    goto/16 :goto_31

    :catch_15
    move-exception v0

    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->ia:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    throw v0

    :catchall_15
    move-exception v0

    :try_start_1f
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_15

    throw v0

    :catch_16
    move-exception v0

    move-wide/from16 v22, v5

    move-wide v15, v10

    move-wide/from16 v17, v15

    goto/16 :goto_13

    :goto_27
    :try_start_20
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->s:Lcom/ss/android/socialbase/downloader/mn/dq;

    const-string v5, "ignore_base_ex_on_stop_status"

    invoke-virtual {v2, v5}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->o:Z

    if-nez v2, :cond_1a

    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->no:Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_12

    if-eqz v2, :cond_1e

    :cond_1a
    if-lez v9, :cond_1b

    int-to-long v5, v9

    :try_start_21
    invoke-interface {v3, v5, v6}, Lcom/ss/android/socialbase/downloader/ia/iw;->d(J)Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_16

    goto :goto_28

    :catchall_16
    nop

    :cond_1b
    :goto_28
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->no:Z

    if-nez v0, :cond_1c

    :try_start_22
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/iw/mn;->ox()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_17

    goto :goto_29

    :catchall_17
    move-exception v0

    move-object v2, v0

    const-string v0, "MultiSegmentWriter"

    const-string v3, "loopAndWrite: finally sync, e = "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    :cond_1c
    :goto_29
    const/4 v2, 0x0

    :goto_2a
    monitor-enter p0

    :try_start_23
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->dq:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/iw/mn;->ox(Ljava/util/List;)V

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_18

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v5

    sub-long v10, v5, v22

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v12, v5, v7

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->s:Lcom/ss/android/socialbase/downloader/mn/dq;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->o:Z

    iget-boolean v8, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->no:Z

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->ia:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move-object v0, v3

    move-object/from16 v21, v4

    iget-wide v3, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->fw:J

    move-wide/from16 v19, v3

    move-object/from16 v4, v21

    const/16 v21, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v21}, Lcom/ss/android/socialbase/downloader/p/dq;->dq(Lcom/ss/android/socialbase/downloader/mn/dq;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/kk;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    if-eqz v2, :cond_24

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->o:Z

    if-nez v0, :cond_24

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->no:Z

    if-nez v0, :cond_24

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->ia:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-eqz v0, :cond_1d

    goto/16 :goto_31

    :cond_1d
    :try_start_24
    const-string v0, "loopAndWrite_finally"

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_24
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_24 .. :try_end_24} :catch_17

    goto/16 :goto_31

    :catch_17
    move-exception v0

    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->ia:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    throw v0

    :catchall_18
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_18

    throw v0

    :cond_1e
    :try_start_26
    invoke-static {}, Lcom/ss/android/socialbase/downloader/ox/dq;->dq()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1f
    const-string v2, "MultiSegmentWriter"

    const-string v5, "loopAndWrite:  BaseException e = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->ia:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_12

    :catch_18
    move-exception v0

    move-wide/from16 v22, v5

    move-wide/from16 v17, v10

    goto/16 :goto_14

    :goto_2b
    :try_start_27
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->ia:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    throw v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_19

    :catchall_19
    move-exception v0

    move-object v2, v0

    move-wide v15, v10

    :goto_2c
    if-lez v9, :cond_20

    int-to-long v5, v9

    :try_start_28
    invoke-interface {v3, v5, v6}, Lcom/ss/android/socialbase/downloader/ia/iw;->d(J)Z
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1a

    goto :goto_2d

    :catchall_1a
    nop

    :cond_20
    :goto_2d
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->no:Z

    if-nez v0, :cond_21

    :try_start_29
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/iw/mn;->ox()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1b

    goto :goto_2e

    :catchall_1b
    move-exception v0

    const-string v3, "MultiSegmentWriter"

    const-string v5, "loopAndWrite: finally sync, e = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    :cond_21
    :goto_2e
    const/4 v0, 0x0

    :goto_2f
    monitor-enter p0

    :try_start_2a
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->dq:Ljava/util/List;

    invoke-direct {v1, v3}, Lcom/ss/android/socialbase/downloader/iw/mn;->ox(Ljava/util/List;)V

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->dq:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1c

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v5

    sub-long v10, v5, v22

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v12, v5, v7

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->s:Lcom/ss/android/socialbase/downloader/mn/dq;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->o:Z

    iget-boolean v8, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->no:Z

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->ia:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move-object/from16 p1, v2

    move-object v6, v3

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->fw:J

    const/16 v21, 0x0

    move-wide/from16 v19, v2

    move-object v3, v6

    const/4 v6, 0x0

    invoke-static/range {v3 .. v21}, Lcom/ss/android/socialbase/downloader/p/dq;->dq(Lcom/ss/android/socialbase/downloader/mn/dq;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/kk;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    if-eqz v0, :cond_23

    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->o:Z

    if-nez v2, :cond_23

    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->no:Z

    if-nez v2, :cond_23

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->ia:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-eqz v2, :cond_22

    goto :goto_30

    :cond_22
    :try_start_2b
    const-string v2, "loopAndWrite_finally"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2b
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_2b .. :try_end_2b} :catch_19

    goto :goto_30

    :catch_19
    move-exception v0

    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/iw/mn;->ia:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    throw v0

    :cond_23
    :goto_30
    throw p1

    :catchall_1c
    move-exception v0

    :try_start_2c
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1c

    throw v0

    :cond_24
    :goto_31
    return-void
.end method

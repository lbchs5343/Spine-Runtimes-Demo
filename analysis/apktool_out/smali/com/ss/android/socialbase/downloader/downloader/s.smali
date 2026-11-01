.class public Lcom/ss/android/socialbase/downloader/downloader/s;
.super Ljava/lang/Object;


# static fields
.field private static d:Ljava/lang/String; = "ResponseHandler"


# instance fields
.field private bl:J

.field private volatile cd:J

.field dq:Z

.field private final e:Z

.field private f:J

.field private volatile fw:J

.field private final gh:Z

.field private h:J

.field private final i:Lcom/ss/android/socialbase/downloader/dq/dq;

.field private ia:Lcom/ss/android/socialbase/downloader/impls/no;

.field private volatile ig:Z

.field private volatile ir:J

.field private final iw:Lcom/ss/android/socialbase/downloader/network/kk;

.field private ji:J

.field private jy:J

.field private final k:J

.field private kk:Lcom/ss/android/socialbase/downloader/downloader/r;

.field private kx:Z

.field private final le:Z

.field private mn:Lcom/ss/android/socialbase/downloader/downloader/o;

.field private volatile mp:Z

.field private n:J

.field private no:Lcom/ss/android/socialbase/downloader/exception/BaseException;

.field private o:Lcom/ss/android/socialbase/downloader/model/s;

.field private volatile op:J

.field private final ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field private final p:Ljava/lang/String;

.field private final q:Lcom/ss/android/socialbase/downloader/ia/iw;

.field private final r:Lcom/ss/android/socialbase/downloader/mn/dq;

.field private final s:Lcom/ss/android/socialbase/downloader/model/d;

.field private final wp:J


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/kk;Lcom/ss/android/socialbase/downloader/model/d;Lcom/ss/android/socialbase/downloader/ia/iw;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->dq:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->op:J

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->ir:J

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->p:Ljava/lang/String;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->e()Lcom/ss/android/socialbase/downloader/downloader/o;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->mn:Lcom/ss/android/socialbase/downloader/downloader/o;

    instance-of v3, p2, Lcom/ss/android/socialbase/downloader/impls/p;

    if-eqz v3, :cond_0

    check-cast p2, Lcom/ss/android/socialbase/downloader/impls/p;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/impls/p;->dq()Lcom/ss/android/socialbase/downloader/impls/no;

    move-result-object v3

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->ia:Lcom/ss/android/socialbase/downloader/impls/no;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/impls/p;->iw()Lcom/ss/android/socialbase/downloader/downloader/r;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->kk:Lcom/ss/android/socialbase/downloader/downloader/r;

    :cond_0
    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->iw:Lcom/ss/android/socialbase/downloader/network/kk;

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->s:Lcom/ss/android/socialbase/downloader/model/d;

    iput-object p5, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->q:Lcom/ss/android/socialbase/downloader/ia/iw;

    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/d;->q()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    iput-wide p2, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->f:J

    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/d;->p()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/d;->fw()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->cd:J

    goto :goto_0

    :cond_1
    invoke-virtual {p4, v0}, Lcom/ss/android/socialbase/downloader/model/d;->ox(Z)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->cd:J

    :goto_0
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/d;->f()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->fw:J

    invoke-static {}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/dq/dq;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->i:Lcom/ss/android/socialbase/downloader/dq/dq;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->r:Lcom/ss/android/socialbase/downloader/mn/dq;

    const-string p2, "sync_strategy"

    invoke-virtual {p1, p2, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->le:Z

    if-eqz p2, :cond_3

    const-string p2, "sync_interval_ms_fg"

    const/16 p4, 0x1388

    invoke-virtual {p1, p2, p4}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p2

    int-to-long p4, p2

    const-string p2, "sync_interval_ms_bg"

    const/16 v1, 0x3e8

    invoke-virtual {p1, p2, v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p2

    int-to-long v1, p2

    const-wide/16 v3, 0x1f4

    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    iput-wide p4, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->k:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    iput-wide p4, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->wp:J

    goto :goto_2

    :cond_3
    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->k:J

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->wp:J

    :goto_2
    const-string p2, "monitor_rw"

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result p1

    if-ne p1, p3, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->e:Z

    const/high16 p1, 0x10000

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/dq;->dq(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->gh:Z

    return-void
.end method

.method private d(JJ)Z
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

.method public static synthetic dq(Lcom/ss/android/socialbase/downloader/downloader/s;)Lcom/ss/android/socialbase/downloader/network/kk;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->iw:Lcom/ss/android/socialbase/downloader/network/kk;

    return-object p0
.end method

.method private dq(Ljava/io/InputStream;)Lcom/ss/android/socialbase/downloader/s/d;
    .locals 8

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ce()I

    move-result v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->r:Lcom/ss/android/socialbase/downloader/mn/dq;

    const-string v2, "rw_concurrent"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    const-wide/32 v6, 0x1400000

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->r:Lcom/ss/android/socialbase/downloader/mn/dq;

    const-string v4, "rw_concurrent_max_buffer_count"

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v1

    :try_start_0
    new-instance v4, Lcom/ss/android/socialbase/downloader/s/dq;

    invoke-direct {v4, p1, v0, v1}, Lcom/ss/android/socialbase/downloader/s/dq;-><init>(Ljava/io/InputStream;II)V

    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->kx:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    new-instance v1, Lcom/ss/android/socialbase/downloader/s/ox;

    invoke-direct {v1, p1, v0}, Lcom/ss/android/socialbase/downloader/s/ox;-><init>(Ljava/io/InputStream;I)V

    iput-boolean v3, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->kx:Z

    return-object v1
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/downloader/o;)V
    .locals 9

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    instance-of v0, p1, Lcom/ss/android/socialbase/downloader/d/s;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ss/android/socialbase/downloader/kk/iw;->d()Z

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    :goto_0
    move-object v2, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->s:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->p()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->s:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->s()Lcom/ss/android/socialbase/downloader/model/d;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->s:Lcom/ss/android/socialbase/downloader/model/d;

    :goto_2
    if-eqz v1, :cond_8

    iget-wide v3, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    invoke-virtual {v1, v3, v4}, Lcom/ss/android/socialbase/downloader/model/d;->d(J)V

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->no()I

    move-result v3

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->gh()I

    move-result v4

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->d()I

    move-result v5

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    invoke-interface/range {v2 .. v7}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(IIIJ)V

    move-object v3, p1

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->no()I

    move-result v4

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->gh()I

    move-result v5

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->d()I

    move-result v6

    iget-wide v7, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    move-object v3, p1

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(IIIJ)V

    :goto_3
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->ia()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->kk()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->o()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    cmp-long p1, v4, v6

    if-lez p1, :cond_6

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->no()I

    move-result p1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->d()I

    move-result v0

    invoke-interface {v2, p1, v0, v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(IIJ)V

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->no()I

    move-result p1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->d()I

    move-result v0

    invoke-interface {v3, p1, v0, v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(IIJ)V

    :goto_4
    return-void

    :cond_6
    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->no()I

    move-result p1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->d()I

    move-result v0

    iget-wide v3, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    invoke-interface {v2, p1, v0, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(IIJ)V

    return-void

    :cond_7
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->no()I

    move-result p1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->d()I

    move-result v0

    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    invoke-interface {v3, p1, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(IIJ)V

    return-void

    :cond_8
    move-object v3, p1

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->s:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->p()Z

    move-result p1

    if-eqz p1, :cond_a

    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->s:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->no()I

    move-result p1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->s:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->gh()I

    move-result v0

    iget-wide v3, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    invoke-interface {v2, p1, v0, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(IIJ)V

    return-void

    :cond_9
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->s:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->no()I

    move-result p1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->s:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->gh()I

    move-result v0

    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    invoke-interface {v3, p1, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(IIJ)V

    :cond_a
    :goto_5
    return-void
.end method

.method private dq(Z)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->ir:J

    sub-long v2, v0, v2

    iget-boolean v4, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->le:Z

    if-eqz v4, :cond_1

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->i:Lcom/ss/android/socialbase/downloader/dq/dq;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/dq/dq;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->k:J

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->wp:J

    :goto_0
    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    goto :goto_1

    :cond_1
    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->op:J

    sub-long/2addr v4, v6

    if-nez p1, :cond_3

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/s;->d(JJ)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/s;->ia()V

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->ir:J

    return-void
.end method

.method private ia()V
    .locals 6

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/s;->dq()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateRealDownloadTime(Z)V

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v2

    if-le v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/kk/iw;->d()Z

    move-result v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/impls/ig;->dq(Z)Lcom/ss/android/socialbase/downloader/downloader/mp;

    move-result-object v2

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->kk:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-direct {p0, v3}, Lcom/ss/android/socialbase/downloader/downloader/s;->dq(Lcom/ss/android/socialbase/downloader/downloader/o;)V

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/mp;->ox(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->kk:Lcom/ss/android/socialbase/downloader/downloader/r;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/mp;->ox(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->kk:Lcom/ss/android/socialbase/downloader/downloader/r;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->s:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/d;->no()I

    move-result v3

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    invoke-interface {v2, v3, v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    :goto_2
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->op:J

    goto :goto_3

    :catch_0
    nop

    :goto_3
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->e:Z

    if-eqz v2, :cond_5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->bl:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->bl:J

    :cond_5
    return-void
.end method

.method private iw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->ig:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->mp:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private mn()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->iw:Lcom/ss/android/socialbase/downloader/network/kk;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ig()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/s$1;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/downloader/s$1;-><init>(Lcom/ss/android/socialbase/downloader/downloader/s;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->ig:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->ig:Z

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/s;->mn()V

    return-void
.end method

.method public dq()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    return-wide v0
.end method

.method public dq(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->fw:J

    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->cd:J

    return-void
.end method

.method public dq(JJJ)V
    .locals 0

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->f:J

    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->fw:J

    iput-wide p5, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->cd:J

    return-void
.end method

.method public ox()V
    .locals 2

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->mp:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->q:Lcom/ss/android/socialbase/downloader/ia/iw;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->mp:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/s;->mn()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public p()V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/s;->iw()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->s:Lcom/ss/android/socialbase/downloader/model/d;

    if-nez v0, :cond_0

    goto/16 :goto_2f

    :cond_0
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->iw:Lcom/ss/android/socialbase/downloader/network/kk;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Lcom/ss/android/socialbase/downloader/network/mn;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_35

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->s:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->ig()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iget-boolean v10, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->e:Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_0
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    :try_start_1
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v15}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    move-wide/from16 v29, v4

    :try_start_2
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->r:Lcom/ss/android/socialbase/downloader/mn/dq;

    const-string v5, "flush_buffer_size_byte"

    const/4 v13, -0x1

    invoke-virtual {v4, v5, v13}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v0, v14, v15, v4}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;I)Lcom/ss/android/socialbase/downloader/model/s;

    move-result-object v0

    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;
    :try_end_2
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    :try_start_3
    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/socialbase/downloader/model/s;->dq(J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    :try_start_4
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->iw:Lcom/ss/android/socialbase/downloader/network/kk;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/kk;->dq()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateRealStartDownloadTime()V

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/s;->dq(Ljava/io/InputStream;)Lcom/ss/android/socialbase/downloader/s/d;

    move-result-object v4
    :try_end_4
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    :try_start_5
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-boolean v5, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->kx:Z

    invoke-virtual {v0, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setIsRwConcurrent(Z)V

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getOpenLimitSpeed()Z

    move-result v0

    iput-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->dq:Z

    sget-wide v14, Lcom/ss/android/socialbase/downloader/constants/s;->p:J

    sget-wide v16, Lcom/ss/android/socialbase/downloader/constants/s;->s:J

    const-wide/16 v18, 0x3e8

    div-long v18, v18, v16

    div-long v14, v14, v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v20, v29

    move-wide/from16 v22, v20

    :goto_0
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/s;->iw()Z

    move-result v0
    :try_end_5
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->iw:Lcom/ss/android/socialbase/downloader/network/kk;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/kk;->p()V

    :cond_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/ss/android/socialbase/downloader/s/d;->d()V

    :cond_2
    :try_start_6
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->gh:Z

    if-eqz v0, :cond_4

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->q:Lcom/ss/android/socialbase/downloader/ia/iw;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->mp:Z

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ia:Lcom/ss/android/socialbase/downloader/impls/no;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/s;->dq(Lcom/ss/android/socialbase/downloader/downloader/o;)V

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    if-eqz v0, :cond_3

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/s;->ia()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v2

    goto :goto_3

    :goto_2
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_4
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ia:Lcom/ss/android/socialbase/downloader/impls/no;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/s;->dq(Lcom/ss/android/socialbase/downloader/downloader/o;)V

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    if-eqz v0, :cond_5

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/s;->ia()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_5
    :goto_3
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    new-array v2, v11, [Ljava/io/Closeable;

    aput-object v0, v2, v12

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v8

    iput-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->n:J

    move/from16 v21, v10

    :goto_4
    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->r:Lcom/ss/android/socialbase/downloader/mn/dq;

    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->p:Ljava/lang/String;

    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->iw:Lcom/ss/android/socialbase/downloader/network/kk;

    iget-boolean v14, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ig:Z

    iget-boolean v15, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->mp:Z

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->no:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->f:J

    sub-long v17, v2, v4

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->n:J

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->h:J

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ji:J

    iget-wide v8, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->bl:J

    const/16 v28, 0x0

    move-object/from16 v16, v0

    move-wide/from16 v19, v2

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    invoke-static/range {v10 .. v28}, Lcom/ss/android/socialbase/downloader/p/dq;->dq(Lcom/ss/android/socialbase/downloader/mn/dq;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/kk;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    return-void

    :goto_5
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    new-array v3, v11, [Ljava/io/Closeable;

    aput-object v2, v3, v12

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    throw v0

    :cond_6
    move-wide/from16 v24, v20

    move/from16 v21, v10

    if-eqz v21, :cond_7

    :try_start_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v24
    :try_end_9
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v13, v4

    move-wide/from16 v31, v6

    move-wide/from16 v26, v8

    :goto_6
    const/4 v5, 0x0

    const/4 v9, 0x1

    goto/16 :goto_19

    :catch_0
    move-exception v0

    move-object v13, v4

    move-wide/from16 v26, v8

    :goto_7
    const/16 v33, 0x0

    goto/16 :goto_25

    :cond_7
    :goto_8
    :try_start_a
    invoke-interface {v4}, Lcom/ss/android/socialbase/downloader/s/d;->dq()Lcom/ss/android/socialbase/downloader/iw/dq;

    move-result-object v0
    :try_end_a
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    if-eqz v21, :cond_8

    :try_start_b
    iget-wide v11, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->h:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v26

    sub-long v26, v26, v24

    add-long v11, v26, v11

    iput-wide v11, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->h:J
    :try_end_b
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_8
    :try_start_c
    iget v11, v0, Lcom/ss/android/socialbase/downloader/iw/dq;->ox:I
    :try_end_c
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    if-eq v11, v13, :cond_14

    :try_start_d
    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v12}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isIgnoreDataVerify()Z

    move-result v12
    :try_end_d
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    if-nez v12, :cond_9

    move-wide/from16 v31, v6

    :try_start_e
    iget-wide v5, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->cd:J

    iget-wide v12, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J
    :try_end_e
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-wide/from16 v26, v8

    :try_start_f
    iget-wide v7, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->f:J

    sub-long/2addr v12, v7

    cmp-long v7, v5, v12

    if-lez v7, :cond_a

    iget-wide v5, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->cd:J

    iget-wide v7, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    iget-wide v12, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->f:J

    sub-long/2addr v7, v12

    int-to-long v12, v11

    add-long/2addr v7, v12

    cmp-long v12, v5, v7

    if-gez v12, :cond_a

    iget-wide v5, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->cd:J

    iget-wide v7, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    iget-wide v11, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->f:J

    sub-long/2addr v7, v11

    sub-long/2addr v5, v7

    long-to-int v11, v5

    goto :goto_c

    :catchall_3
    move-exception v0

    :goto_9
    move-object v13, v4

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_a
    move-object v13, v4

    goto :goto_7

    :catchall_4
    move-exception v0

    :goto_b
    move-wide/from16 v26, v8

    goto :goto_9

    :catch_2
    move-exception v0

    move-wide/from16 v26, v8

    goto :goto_a

    :cond_9
    move-wide/from16 v31, v6

    move-wide/from16 v26, v8

    :cond_a
    :goto_c
    if-eqz v21, :cond_b

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    move-wide/from16 v24, v5

    :cond_b
    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    iget-object v6, v0, Lcom/ss/android/socialbase/downloader/iw/dq;->dq:[B

    const/4 v12, 0x0

    invoke-virtual {v5, v6, v12, v11}, Lcom/ss/android/socialbase/downloader/model/s;->dq([BII)V

    if-eqz v21, :cond_c

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ji:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long v12, v12, v24

    add-long/2addr v12, v6

    iput-wide v12, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ji:J

    :cond_c
    invoke-interface {v4, v0}, Lcom/ss/android/socialbase/downloader/s/d;->dq(Lcom/ss/android/socialbase/downloader/iw/dq;)V

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    int-to-long v11, v11

    add-long/2addr v6, v11

    iput-wide v6, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    add-long v22, v22, v11

    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->q:Lcom/ss/android/socialbase/downloader/ia/iw;

    monitor-enter v6
    :try_end_f
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->gh:Z

    if-eqz v0, :cond_d

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->mp:Z

    if-nez v0, :cond_e

    goto :goto_d

    :catchall_5
    move-exception v0

    goto/16 :goto_f

    :cond_d
    :goto_d
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->q:Lcom/ss/android/socialbase/downloader/ia/iw;

    invoke-interface {v0, v11, v12}, Lcom/ss/android/socialbase/downloader/ia/iw;->d(J)Z

    move-result v0

    iget-object v7, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ia:Lcom/ss/android/socialbase/downloader/impls/no;

    invoke-direct {v1, v7}, Lcom/ss/android/socialbase/downloader/downloader/s;->dq(Lcom/ss/android/socialbase/downloader/downloader/o;)V

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/s;->dq(Z)V

    :cond_e
    monitor-exit v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :try_start_11
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloadWithWifiValid()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveWithWifiValid()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isIgnoreDataVerify()Z

    move-result v0

    if-nez v0, :cond_f

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->cd:J

    cmp-long v0, v6, v29

    if-ltz v0, :cond_f

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->cd:J

    iget-wide v11, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    move-wide/from16 v33, v6

    iget-wide v5, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->f:J

    sub-long/2addr v11, v5

    cmp-long v0, v33, v11

    if-lez v0, :cond_15

    :cond_f
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->dq:Z

    if-eqz v0, :cond_11

    cmp-long v0, v22, v14

    if-lez v0, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_11
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    sub-long v5, v5, v18

    cmp-long v0, v5, v16

    if-gez v0, :cond_10

    sub-long v5, v16, v5

    :try_start_12
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_e

    :catch_3
    move-exception v0

    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide/from16 v18, v5

    move-wide/from16 v22, v29

    :cond_11
    move/from16 v10, v21

    move-wide/from16 v20, v24

    move-wide/from16 v8, v26

    move-wide/from16 v6, v31

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    goto/16 :goto_0

    :cond_12
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/s;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/exception/s;-><init>()V

    throw v0

    :cond_13
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/ox;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/exception/ox;-><init>()V

    throw v0
    :try_end_13
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :goto_f
    :try_start_14
    monitor-exit v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :try_start_15
    throw v0
    :try_end_15
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :catchall_6
    move-exception v0

    move-wide/from16 v31, v6

    goto/16 :goto_b

    :cond_14
    move-wide/from16 v31, v6

    move-wide/from16 v26, v8

    :cond_15
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->iw:Lcom/ss/android/socialbase/downloader/network/kk;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/kk;->p()V

    :cond_16
    invoke-interface {v4}, Lcom/ss/android/socialbase/downloader/s/d;->d()V

    :try_start_16
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->gh:Z

    if-eqz v0, :cond_18

    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->q:Lcom/ss/android/socialbase/downloader/ia/iw;

    monitor-enter v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    :try_start_17
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->mp:Z

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ia:Lcom/ss/android/socialbase/downloader/impls/no;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/s;->dq(Lcom/ss/android/socialbase/downloader/downloader/o;)V

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    if-eqz v0, :cond_17

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/s;->ia()V

    goto :goto_10

    :catchall_7
    move-exception v0

    goto :goto_11

    :cond_17
    :goto_10
    monitor-exit v4

    goto :goto_12

    :goto_11
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    :try_start_18
    throw v0

    :catchall_8
    move-exception v0

    const/4 v5, 0x0

    const/4 v9, 0x1

    goto :goto_13

    :cond_18
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ia:Lcom/ss/android/socialbase/downloader/impls/no;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/s;->dq(Lcom/ss/android/socialbase/downloader/downloader/o;)V

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    if-eqz v0, :cond_19

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/s;->ia()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    :cond_19
    :goto_12
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    const/4 v10, 0x1

    new-array v4, v10, [Ljava/io/Closeable;

    const/16 v20, 0x0

    aput-object v0, v4, v20

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v26

    iput-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->n:J

    const/4 v4, 0x1

    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->r:Lcom/ss/android/socialbase/downloader/mn/dq;

    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->p:Ljava/lang/String;

    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->iw:Lcom/ss/android/socialbase/downloader/network/kk;

    iget-boolean v14, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ig:Z

    iget-boolean v15, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->mp:Z

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->no:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    iget-wide v5, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    iget-wide v7, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->f:J

    sub-long v17, v5, v7

    iget-wide v5, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->n:J

    iget-wide v7, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->h:J

    move-wide/from16 v22, v5

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ji:J

    move-object v6, v10

    iget-wide v9, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->bl:J

    const/16 v28, 0x0

    move-object/from16 v16, v0

    move-wide/from16 v24, v4

    move-wide/from16 v26, v9

    move-wide/from16 v19, v22

    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object v10, v6

    move-wide/from16 v22, v7

    invoke-static/range {v10 .. v28}, Lcom/ss/android/socialbase/downloader/p/dq;->dq(Lcom/ss/android/socialbase/downloader/mn/dq;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/kk;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    const/4 v8, 0x1

    const/16 v33, 0x0

    goto/16 :goto_23

    :goto_13
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    new-array v3, v9, [Ljava/io/Closeable;

    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    throw v0

    :catchall_9
    move-exception v0

    move-wide/from16 v31, v6

    move-wide/from16 v26, v8

    :goto_14
    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object v13, v4

    goto :goto_19

    :catch_4
    move-exception v0

    move-wide/from16 v26, v8

    :goto_15
    const/4 v5, 0x0

    const/4 v9, 0x1

    goto/16 :goto_a

    :catchall_a
    move-exception v0

    move-wide/from16 v31, v6

    move-wide/from16 v26, v8

    move/from16 v21, v10

    goto :goto_14

    :catch_5
    move-exception v0

    move-wide/from16 v26, v8

    move/from16 v21, v10

    goto :goto_15

    :catchall_b
    move-exception v0

    :goto_16
    move-wide/from16 v31, v6

    move-wide/from16 v26, v8

    move/from16 v21, v10

    const/4 v5, 0x0

    const/4 v9, 0x1

    :goto_17
    const/4 v13, 0x0

    goto :goto_19

    :catch_6
    move-exception v0

    move-wide/from16 v26, v8

    move/from16 v21, v10

    const/4 v5, 0x0

    const/4 v9, 0x1

    :goto_18
    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_1a
    move-wide/from16 v31, v6

    move-wide/from16 v26, v8

    move/from16 v21, v10

    const/4 v5, 0x0

    const/4 v9, 0x1

    :try_start_19
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance v4, Ljava/io/IOException;

    const-string v6, "inputStream is null"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x412

    invoke-direct {v0, v6, v4}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :catchall_c
    move-exception v0

    goto :goto_17

    :catch_7
    move-exception v0

    goto :goto_18

    :catch_8
    move-exception v0

    move-wide/from16 v31, v6

    move-wide/from16 v26, v8

    move/from16 v21, v10

    const/4 v5, 0x0

    const/4 v9, 0x1

    new-instance v4, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v6, 0x41e

    invoke-direct {v4, v6, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v4
    :try_end_19
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_19 .. :try_end_19} :catch_7
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    :catchall_d
    move-exception v0

    move-wide/from16 v29, v4

    goto :goto_16

    :goto_19
    :try_start_1a
    sget-object v4, Lcom/ss/android/socialbase/downloader/downloader/s;->d:Ljava/lang/String;

    const-string v6, "handleResponse: e = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/s;->iw()Z

    move-result v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_10

    if-eqz v4, :cond_20

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->iw:Lcom/ss/android/socialbase/downloader/network/kk;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/kk;->p()V

    :cond_1b
    if-eqz v13, :cond_1c

    invoke-interface {v13}, Lcom/ss/android/socialbase/downloader/s/d;->d()V

    :cond_1c
    :try_start_1b
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->gh:Z

    if-eqz v0, :cond_1e

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->q:Lcom/ss/android/socialbase/downloader/ia/iw;

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_f

    :try_start_1c
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->mp:Z

    if-nez v0, :cond_1d

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ia:Lcom/ss/android/socialbase/downloader/impls/no;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/s;->dq(Lcom/ss/android/socialbase/downloader/downloader/o;)V

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    if-eqz v0, :cond_1d

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/s;->ia()V

    goto :goto_1a

    :catchall_e
    move-exception v0

    goto :goto_1b

    :cond_1d
    :goto_1a
    monitor-exit v2

    goto :goto_1c

    :goto_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    :try_start_1d
    throw v0

    :catchall_f
    move-exception v0

    goto :goto_1e

    :cond_1e
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ia:Lcom/ss/android/socialbase/downloader/impls/no;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/s;->dq(Lcom/ss/android/socialbase/downloader/downloader/o;)V

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    if-eqz v0, :cond_1f

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/s;->ia()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    :cond_1f
    :goto_1c
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    new-array v2, v9, [Ljava/io/Closeable;

    aput-object v0, v2, v5

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    :goto_1d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v2, v26

    iput-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->n:J

    goto/16 :goto_4

    :goto_1e
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    new-array v3, v9, [Ljava/io/Closeable;

    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    throw v0

    :cond_20
    :try_start_1e
    invoke-static {}, Lcom/ss/android/socialbase/downloader/ox/dq;->dq()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    goto :goto_1f

    :catchall_10
    move-exception v0

    const/16 v33, 0x0

    goto/16 :goto_2a

    :cond_21
    :goto_1f
    :try_start_1f
    const-string v4, "ResponseHandler"

    invoke-static {v0, v4}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1f
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1f .. :try_end_1f} :catch_9
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->iw:Lcom/ss/android/socialbase/downloader/network/kk;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/kk;->p()V

    :cond_22
    if-eqz v13, :cond_23

    invoke-interface {v13}, Lcom/ss/android/socialbase/downloader/s/d;->d()V

    :cond_23
    :try_start_20
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->gh:Z

    if-eqz v0, :cond_25

    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->q:Lcom/ss/android/socialbase/downloader/ia/iw;

    monitor-enter v4
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_12

    :try_start_21
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->mp:Z

    if-nez v0, :cond_24

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ia:Lcom/ss/android/socialbase/downloader/impls/no;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/s;->dq(Lcom/ss/android/socialbase/downloader/downloader/o;)V

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    if-eqz v0, :cond_24

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/s;->ia()V

    goto :goto_20

    :catchall_11
    move-exception v0

    goto :goto_21

    :cond_24
    :goto_20
    monitor-exit v4

    goto :goto_22

    :goto_21
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    :try_start_22
    throw v0

    :catchall_12
    move-exception v0

    const/4 v8, 0x1

    const/16 v33, 0x0

    goto/16 :goto_24

    :cond_25
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ia:Lcom/ss/android/socialbase/downloader/impls/no;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/s;->dq(Lcom/ss/android/socialbase/downloader/downloader/o;)V

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    if-eqz v0, :cond_26

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/s;->ia()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_12

    :cond_26
    :goto_22
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    new-array v4, v9, [Ljava/io/Closeable;

    aput-object v0, v4, v5

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v26

    iput-wide v6, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->n:J

    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->r:Lcom/ss/android/socialbase/downloader/mn/dq;

    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->p:Ljava/lang/String;

    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->iw:Lcom/ss/android/socialbase/downloader/network/kk;

    iget-boolean v14, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ig:Z

    iget-boolean v15, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->mp:Z

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->no:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    move-wide/from16 v16, v6

    const/4 v4, 0x0

    iget-wide v5, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->f:J

    sub-long v5, v16, v5

    iget-wide v7, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->n:J

    move-wide/from16 v17, v5

    const/16 v33, 0x0

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->h:J

    move-object/from16 v16, v10

    const/4 v6, 0x1

    iget-wide v9, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ji:J

    move-wide/from16 v19, v7

    const/4 v8, 0x1

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->bl:J

    const/16 v28, 0x0

    move-wide/from16 v22, v4

    move-wide/from16 v26, v6

    move-wide/from16 v24, v9

    move-object/from16 v10, v16

    move-object/from16 v16, v0

    invoke-static/range {v10 .. v28}, Lcom/ss/android/socialbase/downloader/p/dq;->dq(Lcom/ss/android/socialbase/downloader/mn/dq;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/kk;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    :goto_23
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isIgnoreDataVerify()Z

    move-result v0

    if-eqz v0, :cond_27

    goto/16 :goto_2f

    :cond_27
    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->f:J

    sub-long/2addr v4, v6

    cmp-long v0, v4, v29

    if-ltz v0, :cond_36

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->cd:J

    cmp-long v0, v6, v29

    if-ltz v0, :cond_36

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->cd:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_28

    goto/16 :goto_2f

    :cond_28
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v6, "handle data length[%d] != content length[%d] downloadChunkContentLen[%d], range[%d, %d) , current offset[%d] , handle start from %d"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v9, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->cd:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v9, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->fw:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v9, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v10, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->f:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v4, v11, v33

    aput-object v2, v11, v8

    const/4 v2, 0x2

    aput-object v3, v11, v2

    const/4 v2, 0x3

    aput-object v5, v11, v2

    const/4 v2, 0x4

    aput-object v7, v11, v2

    const/4 v2, 0x5

    aput-object v9, v11, v2

    const/4 v2, 0x6

    aput-object v10, v11, v2

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x41b

    invoke-direct {v0, v3, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    :goto_24
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    const/4 v6, 0x1

    new-array v3, v6, [Ljava/io/Closeable;

    aput-object v2, v3, v33

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    throw v0

    :catch_9
    move-exception v0

    const/16 v33, 0x0

    :try_start_23
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->no:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    throw v0

    :catchall_13
    move-exception v0

    goto/16 :goto_2a

    :catch_a
    move-exception v0

    move-wide/from16 v26, v8

    move/from16 v21, v10

    const/16 v33, 0x0

    const/4 v13, 0x0

    :goto_25
    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/s;->d:Ljava/lang/String;

    const-string v3, "handleResponse: BaseException e = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->r:Lcom/ss/android/socialbase/downloader/mn/dq;

    const-string v3, "ignore_base_ex_on_stop_status"

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/s;->iw()Z

    move-result v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_13

    if-eqz v2, :cond_2e

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->iw:Lcom/ss/android/socialbase/downloader/network/kk;

    if-eqz v0, :cond_29

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/kk;->p()V

    :cond_29
    if-eqz v13, :cond_2a

    invoke-interface {v13}, Lcom/ss/android/socialbase/downloader/s/d;->d()V

    :cond_2a
    :try_start_24
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->gh:Z

    if-eqz v0, :cond_2c

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->q:Lcom/ss/android/socialbase/downloader/ia/iw;

    monitor-enter v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_15

    :try_start_25
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->mp:Z

    if-nez v0, :cond_2b

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ia:Lcom/ss/android/socialbase/downloader/impls/no;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/s;->dq(Lcom/ss/android/socialbase/downloader/downloader/o;)V

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    if-eqz v0, :cond_2b

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/s;->ia()V

    goto :goto_26

    :catchall_14
    move-exception v0

    goto :goto_27

    :cond_2b
    :goto_26
    monitor-exit v2

    goto :goto_28

    :goto_27
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_14

    :try_start_26
    throw v0

    :catchall_15
    move-exception v0

    goto :goto_29

    :cond_2c
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ia:Lcom/ss/android/socialbase/downloader/impls/no;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/s;->dq(Lcom/ss/android/socialbase/downloader/downloader/o;)V

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    if-eqz v0, :cond_2d

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/s;->ia()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_15

    :cond_2d
    :goto_28
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    const/4 v6, 0x1

    new-array v2, v6, [Ljava/io/Closeable;

    aput-object v0, v2, v33

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    goto/16 :goto_1d

    :goto_29
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    const/4 v6, 0x1

    new-array v3, v6, [Ljava/io/Closeable;

    aput-object v2, v3, v33

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    throw v0

    :cond_2e
    :try_start_27
    invoke-static {}, Lcom/ss/android/socialbase/downloader/ox/dq;->dq()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2f
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->no:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    throw v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_13

    :goto_2a
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->iw:Lcom/ss/android/socialbase/downloader/network/kk;

    if-eqz v2, :cond_30

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/network/kk;->p()V

    :cond_30
    if-eqz v13, :cond_31

    invoke-interface {v13}, Lcom/ss/android/socialbase/downloader/s/d;->d()V

    :cond_31
    :try_start_28
    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->gh:Z

    if-eqz v2, :cond_33

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->q:Lcom/ss/android/socialbase/downloader/ia/iw;

    monitor-enter v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_17

    :try_start_29
    iget-boolean v3, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->mp:Z

    if-nez v3, :cond_32

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ia:Lcom/ss/android/socialbase/downloader/impls/no;

    invoke-direct {v1, v3}, Lcom/ss/android/socialbase/downloader/downloader/s;->dq(Lcom/ss/android/socialbase/downloader/downloader/o;)V

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    if-eqz v3, :cond_32

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/s;->ia()V

    goto :goto_2b

    :catchall_16
    move-exception v0

    goto :goto_2c

    :cond_32
    :goto_2b
    monitor-exit v2

    goto :goto_2d

    :goto_2c
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_16

    :try_start_2a
    throw v0

    :catchall_17
    move-exception v0

    goto :goto_2e

    :cond_33
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ia:Lcom/ss/android/socialbase/downloader/impls/no;

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/s;->dq(Lcom/ss/android/socialbase/downloader/downloader/o;)V

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    if-eqz v2, :cond_34

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/s;->ia()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_17

    :cond_34
    :goto_2d
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    const/4 v6, 0x1

    new-array v3, v6, [Ljava/io/Closeable;

    aput-object v2, v3, v33

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v2, v26

    iput-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->n:J

    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->r:Lcom/ss/android/socialbase/downloader/mn/dq;

    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ox:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->p:Ljava/lang/String;

    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->iw:Lcom/ss/android/socialbase/downloader/network/kk;

    iget-boolean v14, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ig:Z

    iget-boolean v15, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->mp:Z

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->no:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    iget-wide v3, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->jy:J

    iget-wide v5, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->f:J

    sub-long v17, v3, v5

    iget-wide v3, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->n:J

    iget-wide v5, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->h:J

    iget-wide v7, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->ji:J

    move-object/from16 v16, v2

    move-wide/from16 v19, v3

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->bl:J

    const/16 v28, 0x0

    move-wide/from16 v26, v2

    move-wide/from16 v22, v5

    move-wide/from16 v24, v7

    invoke-static/range {v10 .. v28}, Lcom/ss/android/socialbase/downloader/p/dq;->dq(Lcom/ss/android/socialbase/downloader/mn/dq;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/kk;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    throw v0

    :goto_2e
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/s;->o:Lcom/ss/android/socialbase/downloader/model/s;

    const/4 v6, 0x1

    new-array v3, v6, [Ljava/io/Closeable;

    aput-object v2, v3, v33

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    throw v0

    :cond_35
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/iw;

    const/16 v2, 0x3ec

    const-string v3, "the content-length is 0"

    invoke-direct {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/exception/iw;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_36
    :goto_2f
    return-void
.end method

.method public s()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/s;->op:J

    return-wide v0
.end method

.class public Lcom/ss/android/socialbase/downloader/iw/no;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/iw/iw;
.implements Lcom/ss/android/socialbase/downloader/network/ox$dq;


# instance fields
.field private final bl:Lcom/ss/android/socialbase/downloader/ia/s$d;

.field private volatile cd:Z

.field private final d:Lcom/ss/android/socialbase/downloader/iw/q;

.field private final dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field private e:J

.field private f:I

.field private fw:Lcom/ss/android/socialbase/downloader/exception/BaseException;

.field private final gh:Ljava/lang/Object;

.field private h:I

.field private final i:Lcom/ss/android/socialbase/downloader/ia/s;

.field private final ia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/iw/mp;",
            ">;"
        }
    .end annotation
.end field

.field private volatile ig:Z

.field private volatile iw:Z

.field private final ji:Z

.field private final jy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/iw/kk;",
            ">;"
        }
    .end annotation
.end field

.field private k:J

.field private final kk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/iw/fw;",
            ">;"
        }
    .end annotation
.end field

.field private kx:F

.field private volatile le:Z

.field private volatile mn:Z

.field private mp:J

.field private final n:Lcom/ss/android/socialbase/downloader/ia/s$d;

.field private no:Lcom/ss/android/socialbase/downloader/model/p;

.field private o:Lcom/ss/android/socialbase/downloader/model/p;

.field private final ox:Lcom/ss/android/socialbase/downloader/iw/d;

.field private final p:Lcom/ss/android/socialbase/downloader/ia/iw;

.field private final q:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ss/android/socialbase/downloader/iw/kk;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/ss/android/socialbase/downloader/kk/s;

.field private final s:Lcom/ss/android/socialbase/downloader/iw/mn;

.field private wp:J


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/iw/q;Lcom/ss/android/socialbase/downloader/ia/iw;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->iw:Z

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mn:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ia:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->kk:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ig:Z

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->q:Ljava/util/LinkedList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->gh:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->le:Z

    new-instance v2, Lcom/ss/android/socialbase/downloader/iw/no$1;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/downloader/iw/no$1;-><init>(Lcom/ss/android/socialbase/downloader/iw/no;)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->bl:Lcom/ss/android/socialbase/downloader/ia/s$d;

    new-instance v2, Lcom/ss/android/socialbase/downloader/iw/no$2;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/downloader/iw/no$2;-><init>(Lcom/ss/android/socialbase/downloader/iw/no;)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->n:Lcom/ss/android/socialbase/downloader/ia/s$d;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->d:Lcom/ss/android/socialbase/downloader/iw/q;

    new-instance v2, Lcom/ss/android/socialbase/downloader/iw/d;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/iw/q;->p()I

    move-result v3

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/iw/q;->s()I

    move-result p2

    invoke-direct {v2, v3, p2}, Lcom/ss/android/socialbase/downloader/iw/d;-><init>(II)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ox:Lcom/ss/android/socialbase/downloader/iw/d;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/iw/no;->p:Lcom/ss/android/socialbase/downloader/ia/iw;

    new-instance p2, Lcom/ss/android/socialbase/downloader/iw/mn;

    invoke-direct {p2, p1, p3, v2}, Lcom/ss/android/socialbase/downloader/iw/mn;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/ia/iw;Lcom/ss/android/socialbase/downloader/iw/ox;)V

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->s:Lcom/ss/android/socialbase/downloader/iw/mn;

    new-instance p2, Lcom/ss/android/socialbase/downloader/ia/s;

    invoke-direct {p2}, Lcom/ss/android/socialbase/downloader/ia/s;-><init>()V

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->i:Lcom/ss/android/socialbase/downloader/ia/s;

    new-instance p2, Lcom/ss/android/socialbase/downloader/kk/s;

    invoke-direct {p2}, Lcom/ss/android/socialbase/downloader/kk/s;-><init>()V

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->r:Lcom/ss/android/socialbase/downloader/kk/s;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p1

    const-string p2, "debug"

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ji:Z

    return-void
.end method

.method private cd()J
    .locals 9

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->iw:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mn:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/iw/no;->d(J)V

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->d:Lcom/ss/android/socialbase/downloader/iw/q;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/iw/q;->no()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/iw/no;->e:J

    cmp-long v8, v6, v4

    if-lez v8, :cond_1

    sub-long v4, v0, v6

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->e:J

    iget v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->h:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x7d0

    monitor-exit p0

    return-wide v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private d(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/fw;)Lcom/ss/android/socialbase/downloader/iw/kk;
    .locals 6

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/iw/kk;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-direct {p0, v4, v0, v1}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(Ljava/util/List;Lcom/ss/android/socialbase/downloader/iw/kk;Z)V

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(Lcom/ss/android/socialbase/downloader/iw/kk;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mp:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_0

    :cond_1
    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->mp()V

    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/iw/no;->ox(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/fw;)Lcom/ss/android/socialbase/downloader/iw/kk;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(Lcom/ss/android/socialbase/downloader/iw/kk;)J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-direct {p0, p2, p1, v1}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(Ljava/util/List;Lcom/ss/android/socialbase/downloader/iw/kk;Z)V

    return-object p1

    :cond_3
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->f()Lcom/ss/android/socialbase/downloader/iw/kk;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private d(J)V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->r:Lcom/ss/android/socialbase/downloader/kk/s;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/ss/android/socialbase/downloader/kk/s;->dq(JJ)Z

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ia:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/iw/mp;

    invoke-virtual {v1, p1, p2}, Lcom/ss/android/socialbase/downloader/iw/mp;->d(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/kk;Lcom/ss/android/socialbase/downloader/iw/fw;Lcom/ss/android/socialbase/downloader/model/p;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Lcom/ss/android/socialbase/downloader/exception/kk;
        }
    .end annotation

    iget-object v0, p2, Lcom/ss/android/socialbase/downloader/iw/kk;->dq:Lcom/ss/android/socialbase/downloader/iw/mp;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/ss/android/socialbase/downloader/iw/o;

    const/4 p2, 0x1

    const-string p3, "segment already has an owner"

    invoke-direct {p1, p2, p3}, Lcom/ss/android/socialbase/downloader/iw/o;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/iw/mp;->ia()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/iw/kk;->s()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_b

    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/p;->d()Z

    move-result p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/iw/kk;->s()J

    move-result-wide v2

    const/16 p1, 0x3ec

    cmp-long v4, v2, v0

    if-gtz v4, :cond_3

    const-string v2, "SegmentDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "parseHttpResponse: segment.getCurrentOffsetRead = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/iw/kk;->s()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/p;->dq()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p3, Lcom/ss/android/socialbase/downloader/exception/d;

    iget v0, p4, Lcom/ss/android/socialbase/downloader/model/p;->ox:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "2: response code error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p4, p4, Lcom/ss/android/socialbase/downloader/model/p;->ox:I

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " segment="

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, v0, p2}, Lcom/ss/android/socialbase/downloader/exception/d;-><init>(IILjava/lang/String;)V

    throw p3

    :cond_3
    new-instance p3, Lcom/ss/android/socialbase/downloader/exception/d;

    iget v0, p4, Lcom/ss/android/socialbase/downloader/model/p;->ox:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1: response code error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p4, p4, Lcom/ss/android/socialbase/downloader/model/p;->ox:I

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " segment="

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, v0, p2}, Lcom/ss/android/socialbase/downloader/exception/d;-><init>(IILjava/lang/String;)V

    throw p3

    :cond_4
    :goto_1
    iget-boolean p1, p3, Lcom/ss/android/socialbase/downloader/iw/fw;->p:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->o:Lcom/ss/android/socialbase/downloader/model/p;

    if-nez p1, :cond_a

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/iw/no;->o:Lcom/ss/android/socialbase/downloader/model/p;

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->gh:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->gh:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->p:Lcom/ss/android/socialbase/downloader/ia/iw;

    if-eqz p1, :cond_5

    iget-object p3, p3, Lcom/ss/android/socialbase/downloader/iw/fw;->dq:Ljava/lang/String;

    iget-object v2, p4, Lcom/ss/android/socialbase/downloader/model/p;->d:Lcom/ss/android/socialbase/downloader/network/mn;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/iw/kk;->s()J

    move-result-wide v3

    invoke-interface {p1, p3, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/ia/iw;->dq(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/mn;J)V

    :cond_5
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/p;->o()J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-lez p3, :cond_a

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/ss/android/socialbase/downloader/iw/kk;

    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/iw/kk;->iw()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v0

    if-lez v6, :cond_7

    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/iw/kk;->iw()J

    move-result-wide v2

    sub-long v6, p1, v4

    cmp-long v8, v2, v6

    if-lez v8, :cond_6

    :cond_7
    sub-long v2, p1, v4

    invoke-virtual {p4, v2, v3}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox(J)V

    goto :goto_2

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_8
    invoke-direct {p0, p4}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(Lcom/ss/android/socialbase/downloader/model/p;)V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->no:Lcom/ss/android/socialbase/downloader/model/p;

    if-nez p1, :cond_a

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/iw/no;->no:Lcom/ss/android/socialbase/downloader/model/p;

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-gtz v2, :cond_9

    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/p;->o()J

    move-result-wide p1

    const-string p4, "SegmentDispatcher"

    const-string v0, "checkSegmentHttpResponse:len="

    const-string v1, ",url="

    invoke-static {p1, p2, v0, v1}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p3, p3, Lcom/ss/android/socialbase/downloader/iw/fw;->dq:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p3, p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setTotalBytes(J)V

    :cond_9
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->gh:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->gh:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2

    :cond_a
    return-void

    :cond_b
    new-instance p1, Lcom/ss/android/socialbase/downloader/iw/o;

    const/4 p2, 0x5

    const-string p3, "applySegment"

    invoke-direct {p1, p2, p3}, Lcom/ss/android/socialbase/downloader/iw/o;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private d(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/iw/fw;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ji:Z

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/iw/fw;

    const-string v2, "addIpListLocked: urlRecord = "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->d:Lcom/ss/android/socialbase/downloader/iw/q;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/q;->ig()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->kk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->kk:Ljava/util/List;

    add-int/2addr p1, v1

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void

    :cond_2
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->kk:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private d(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/iw/kk;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExpectFileLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mp:J

    const-string v0, "SegmentDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "initSegments: getExpectFileLength = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mp:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/iw/kk;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->q:Ljava/util/LinkedList;

    new-instance v3, Lcom/ss/android/socialbase/downloader/iw/kk;

    invoke-direct {v3, v1}, Lcom/ss/android/socialbase/downloader/iw/kk;-><init>(Lcom/ss/android/socialbase/downloader/iw/kk;)V

    invoke-direct {p0, v2, v3, v0}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(Ljava/util/List;Lcom/ss/android/socialbase/downloader/iw/kk;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->q:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/iw/no;->p(Ljava/util/List;)V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->q:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/iw/no;->ox(Ljava/util/List;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->q:Ljava/util/LinkedList;

    new-instance v1, Lcom/ss/android/socialbase/downloader/iw/kk;

    const-wide/16 v4, -0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ss/android/socialbase/downloader/iw/kk;-><init>(JJ)V

    invoke-direct {p0, p1, v1, v0}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(Ljava/util/List;Lcom/ss/android/socialbase/downloader/iw/kk;Z)V

    :goto_2
    const-string p1, "SegmentDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initSegments: totalLength = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static synthetic d(Lcom/ss/android/socialbase/downloader/iw/no;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mn:Z

    return p0
.end method

.method private dq(J)I
    .locals 6

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/iw/kk;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    return v1

    :cond_0
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-gtz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private dq(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->kk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->kk:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/iw/fw;

    iget-object v2, v2, Lcom/ss/android/socialbase/downloader/iw/fw;->dq:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private dq(II)J
    .locals 5

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/iw/kk;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(Lcom/ss/android/socialbase/downloader/iw/kk;)J

    move-result-wide v1

    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/iw/kk;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-wide v1

    :cond_1
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox()J

    move-result-wide p1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/kk;->s()J

    move-result-wide v3

    sub-long/2addr p1, v3

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-nez v0, :cond_2

    return-wide p1

    :cond_2
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/iw/kk;)J
    .locals 7

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/iw/kk;->d()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mp:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/iw/kk;->s()J

    move-result-wide v0

    sub-long/2addr v2, v0

    return-wide v2

    :cond_0
    return-wide v0
.end method

.method private dq(JJJI)Lcom/ss/android/socialbase/downloader/iw/mp;
    .locals 17

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/ss/android/socialbase/downloader/iw/no;->ia:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v6

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ss/android/socialbase/downloader/iw/mp;

    iget-wide v10, v9, Lcom/ss/android/socialbase/downloader/iw/mp;->iw:J

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-lez v14, :cond_1

    add-int/lit8 v7, v7, 0x1

    iget-wide v10, v9, Lcom/ss/android/socialbase/downloader/iw/mp;->iw:J

    cmp-long v14, v10, v0

    if-gez v14, :cond_1

    move-wide/from16 v10, p3

    invoke-virtual {v9, v0, v1, v10, v11}, Lcom/ss/android/socialbase/downloader/iw/mp;->dq(JJ)J

    move-result-wide v14

    cmp-long v16, v14, v12

    if-ltz v16, :cond_0

    cmp-long v12, v14, v4

    if-gez v12, :cond_0

    move-object v8, v9

    move-wide v4, v14

    goto :goto_0

    :cond_1
    move-wide/from16 v10, p3

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_3

    move/from16 v0, p7

    if-lt v7, v0, :cond_3

    cmp-long v0, v4, p5

    if-gez v0, :cond_3

    const-string v0, "findPoorReadThread: ----------- minSpeed = "

    const-string v1, ", threadIndex = "

    invoke-static {v4, v5, v0, v1}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/ss/android/socialbase/downloader/iw/mp;->ox:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SegmentDispatcher"

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_3
    return-object v6
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/downloader/iw/no;ZJJ)Lcom/ss/android/socialbase/downloader/iw/mp;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(ZJJ)Lcom/ss/android/socialbase/downloader/iw/mp;

    move-result-object p0

    return-object p0
.end method

.method private dq(ZJJ)Lcom/ss/android/socialbase/downloader/iw/mp;
    .locals 8

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ia:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/iw/mp;

    iget v3, v2, Lcom/ss/android/socialbase/downloader/iw/mp;->ox:I

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    :cond_1
    iget-wide v3, v2, Lcom/ss/android/socialbase/downloader/iw/mp;->p:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    iget-wide v3, v2, Lcom/ss/android/socialbase/downloader/iw/mp;->s:J

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    iget-wide v3, v2, Lcom/ss/android/socialbase/downloader/iw/mp;->p:J

    sub-long v3, p2, v3

    cmp-long v5, v3, p4

    if-lez v5, :cond_0

    if-nez v1, :cond_2

    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    iget-wide v3, v2, Lcom/ss/android/socialbase/downloader/iw/mp;->p:J

    iget-wide v5, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->p:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .locals 3

    const-string v0, "SegmentDispatcher"

    const-string v1, "onError, e = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->fw:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ox:Lcom/ss/android/socialbase/downloader/iw/d;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/iw/d;->ox()V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ia:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/iw/mp;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/mp;->s()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/iw/fw;)V
    .locals 6

    new-instance v0, Lcom/ss/android/socialbase/downloader/iw/mp;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ox:Lcom/ss/android/socialbase/downloader/iw/d;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ia:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/iw/mp;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/iw/no;Lcom/ss/android/socialbase/downloader/iw/ox;Lcom/ss/android/socialbase/downloader/iw/fw;I)V

    iget-object p1, v2, Lcom/ss/android/socialbase/downloader/iw/no;->ia:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->fw()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/iw/mp;->dq(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/model/p;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->o:Lcom/ss/android/socialbase/downloader/model/p;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->no:Lcom/ss/android/socialbase/downloader/model/p;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/p;->o()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/p;->o()J

    move-result-wide v3

    const/16 v5, 0x432

    const-string v6, "SegmentDispatcher"

    cmp-long v7, v1, v3

    if-eqz v7, :cond_2

    const-string v7, "total len not equals,len="

    const-string v8, ",sLen="

    invoke-static {v1, v2, v7, v8}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",code="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/ss/android/socialbase/downloader/model/p;->ox:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",sCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/ss/android/socialbase/downloader/model/p;->ox:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",range="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/p;->s()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",sRange = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/p;->s()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",url = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/ss/android/socialbase/downloader/model/p;->dq:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",sUrl="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/ss/android/socialbase/downloader/model/p;->dq:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    cmp-long v10, v1, v8

    if-lez v10, :cond_2

    cmp-long v1, v3, v8

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-direct {p1, v5, v7}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/p;->ox()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/p;->ox()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "etag not equals with main url, etag = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mainEtag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-direct {p1, v5, v1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method private dq(Ljava/util/List;Lcom/ss/android/socialbase/downloader/iw/kk;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/iw/kk;",
            ">;",
            "Lcom/ss/android/socialbase/downloader/iw/kk;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/socialbase/downloader/iw/kk;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz p3, :cond_1

    invoke-virtual {p2, v2}, Lcom/ss/android/socialbase/downloader/iw/kk;->dq(I)V

    :cond_1
    return-void
.end method

.method private dq(JJ)Z
    .locals 9

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->r:Lcom/ss/android/socialbase/downloader/kk/s;

    sub-long v2, p1, p3

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/ss/android/socialbase/downloader/kk/s;->d(JJ)J

    move-result-wide v0

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ia:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    int-to-long v5, v4

    div-long/2addr v0, v5

    :cond_0
    long-to-float v0, v0

    iget v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->kx:F

    mul-float v0, v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-long v6, v0

    div-int/lit8 v8, v4, 0x2

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(JJJI)Lcom/ss/android/socialbase/downloader/iw/mp;

    move-result-object p1

    move-object v0, v1

    move-wide v2, v4

    const/4 p2, 0x1

    const-string v6, "SegmentDispatcher"

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/iw/no;->ox(Lcom/ss/android/socialbase/downloader/iw/mp;)Z

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "handlePoorReadThread: reconnect for poor speed, threadIndex = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p4, p1, Lcom/ss/android/socialbase/downloader/iw/mp;->ox:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v6, p3}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/iw/mp;->iw()V

    return p2

    :cond_1
    const/4 v1, 0x1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(ZJJ)Lcom/ss/android/socialbase/downloader/iw/mp;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/iw/no;->ox(Lcom/ss/android/socialbase/downloader/iw/mp;)Z

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "handlePoorReadThread: reconnect for connect timeout, threadIndex = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p4, p1, Lcom/ss/android/socialbase/downloader/iw/mp;->ox:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v6, p3}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/iw/mp;->iw()V

    return p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/iw/mp;JJJD)Z
    .locals 5

    iget-wide v0, p1, Lcom/ss/android/socialbase/downloader/iw/mp;->iw:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->r:Lcom/ss/android/socialbase/downloader/kk/s;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/ss/android/socialbase/downloader/kk/s;->d(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ia:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    int-to-long v2, v2

    div-long/2addr v0, v2

    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/ss/android/socialbase/downloader/iw/mp;->dq(JJ)J

    move-result-wide p1

    cmp-long p3, p1, p6

    if-ltz p3, :cond_1

    long-to-double p1, p1

    long-to-double p3, v0

    mul-double p3, p3, p8

    cmpg-double p5, p1, p3

    if-gez p5, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/downloader/iw/no;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->iw:Z

    return p0
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/downloader/iw/no;Lcom/ss/android/socialbase/downloader/iw/mp;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/iw/no;->ox(Lcom/ss/android/socialbase/downloader/iw/mp;)Z

    move-result p0

    return p0
.end method

.method private f()Lcom/ss/android/socialbase/downloader/iw/kk;
    .locals 14

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->fw()Lcom/ss/android/socialbase/downloader/iw/kk;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/iw/kk;->dq:Lcom/ss/android/socialbase/downloader/iw/mp;

    if-nez v4, :cond_1

    move-object v3, p0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/iw/kk;->o()I

    move-result v3

    const/4 v13, 0x2

    if-lt v3, v13, :cond_2

    return-object v2

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/ss/android/socialbase/downloader/iw/no;->d(J)V

    iget-wide v5, v4, Lcom/ss/android/socialbase/downloader/iw/mp;->iw:J

    sub-long v5, v7, v5

    const-wide/16 v9, 0x7d0

    cmp-long v3, v5, v9

    if-lez v3, :cond_3

    sub-long v5, v7, v9

    const-wide/16 v9, 0x1f4

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    move-object v3, p0

    invoke-direct/range {v3 .. v12}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(Lcom/ss/android/socialbase/downloader/iw/mp;JJJD)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v0, v3, Lcom/ss/android/socialbase/downloader/iw/no;->ji:Z

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/iw/kk;->toString()Ljava/lang/String;

    return-object v1

    :cond_3
    move-object v3, p0

    :cond_4
    add-int/lit8 v4, v0, 0x1

    if-le v0, v13, :cond_6

    iget-boolean v0, v3, Lcom/ss/android/socialbase/downloader/iw/no;->ji:Z

    if-eqz v0, :cond_5

    const-string v0, "obtainSegmentWhenNoNewSegment: waitCount > 2, return segment = "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    :goto_1
    return-object v1

    :cond_6
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x1f4

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0

    move v0, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v2
.end method

.method private fw()Lcom/ss/android/socialbase/downloader/iw/kk;
    .locals 9

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/iw/kk;

    invoke-direct {p0, v3}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(Lcom/ss/android/socialbase/downloader/iw/kk;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/iw/kk;->o()I

    move-result v4

    if-ge v4, v2, :cond_0

    move-object v1, v3

    move v2, v4

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private ia()V
    .locals 5

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->wp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->e:J

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->i:Lcom/ss/android/socialbase/downloader/ia/s;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->n:Lcom/ss/android/socialbase/downloader/ia/s$d;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/ia/s;->dq(Lcom/ss/android/socialbase/downloader/ia/s$d;J)V

    :cond_0
    return-void
.end method

.method private ig()Z
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ia:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/iw/mp;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/iw/mp;->mn()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic iw(Lcom/ss/android/socialbase/downloader/iw/no;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->kk:Ljava/util/List;

    return-object p0
.end method

.method private iw()V
    .locals 5

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->kk:Ljava/util/List;

    new-instance v1, Lcom/ss/android/socialbase/downloader/iw/fw;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/iw/fw;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->kk:Ljava/util/List;

    new-instance v3, Lcom/ss/android/socialbase/downloader/iw/fw;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/ss/android/socialbase/downloader/iw/fw;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->d:Lcom/ss/android/socialbase/downloader/iw/q;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->kk:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/iw/q;->dq(I)V

    return-void
.end method

.method private jy()J
    .locals 5

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ia:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/iw/mp;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/iw/mp;->d()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private kk()V
    .locals 6

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->d:Lcom/ss/android/socialbase/downloader/iw/q;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/q;->ig()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ig:Z

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->s()V

    return-void

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/ox;->dq()Lcom/ss/android/socialbase/downloader/network/ox;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/ss/android/socialbase/downloader/network/ox;->dq(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/ox$dq;J)V

    const/4 v2, 0x2

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/ss/android/socialbase/downloader/network/ox;->dq(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/ox$dq;J)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic mn(Lcom/ss/android/socialbase/downloader/iw/no;)J
    .locals 2

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->cd()J

    move-result-wide v0

    return-wide v0
.end method

.method private mn()V
    .locals 5

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->d:Lcom/ss/android/socialbase/downloader/iw/q;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/q;->o()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->k:J

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/q;->no()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->wp:J

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/q;->jy()F

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->kx:F

    iget v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->h:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->i:Lcom/ss/android/socialbase/downloader/ia/s;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->bl:Lcom/ss/android/socialbase/downloader/ia/s$d;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/ia/s;->dq(Lcom/ss/android/socialbase/downloader/ia/s$d;J)V

    :cond_0
    return-void
.end method

.method private mp()V
    .locals 14

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    if-ge v6, v0, :cond_5

    iget-object v7, p0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ss/android/socialbase/downloader/iw/kk;

    iget-object v8, p0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ss/android/socialbase/downloader/iw/kk;

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/iw/kk;->s()J

    move-result-wide v9

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-lez v13, :cond_4

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/iw/kk;->dq()J

    move-result-wide v9

    cmp-long v11, v9, v2

    if-gtz v11, :cond_4

    iget-object v9, v8, Lcom/ss/android/socialbase/downloader/iw/kk;->dq:Lcom/ss/android/socialbase/downloader/iw/mp;

    if-nez v9, :cond_4

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_2
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v9, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ji:Z

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/iw/kk;->toString()Ljava/lang/String;

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/iw/kk;->toString()Ljava/lang/String;

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/iw/kk;->s()J

    move-result-wide v8

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/iw/kk;->s()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/iw/kk;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ia:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/socialbase/downloader/iw/mp;

    iget-object v5, v4, Lcom/ss/android/socialbase/downloader/iw/mp;->dq:Lcom/ss/android/socialbase/downloader/iw/kk;

    if-ne v5, v2, :cond_7

    iget-boolean v5, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ji:Z

    if-eqz v5, :cond_8

    invoke-static {v2}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_8
    invoke-virtual {v4, v1}, Lcom/ss/android/socialbase/downloader/iw/mp;->dq(Z)V

    goto :goto_2

    :cond_9
    :goto_3
    return-void
.end method

.method private no()V
    .locals 2

    const-string v0, "SegmentDispatcher"

    const-string v1, "onComplete"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ox:Lcom/ss/android/socialbase/downloader/iw/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/d;->ox()V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->gh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->gh:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private o()Lcom/ss/android/socialbase/downloader/iw/fw;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->f:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->kk:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->d:Lcom/ss/android/socialbase/downloader/iw/q;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/iw/q;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->f:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->kk:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/iw/fw;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ox(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/fw;)Lcom/ss/android/socialbase/downloader/iw/kk;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    invoke-direct {v0, v6, v2}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(II)J

    move-result-wide v7

    cmp-long v9, v7, v3

    if-lez v9, :cond_0

    move v5, v6

    move-wide v3, v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/iw/no;->d:Lcom/ss/android/socialbase/downloader/iw/q;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/iw/q;->mn()J

    move-result-wide v6

    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/iw/no;->d:Lcom/ss/android/socialbase/downloader/iw/q;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/iw/q;->kk()J

    move-result-wide v8

    if-ltz v5, :cond_10

    cmp-long v2, v3, v6

    if-lez v2, :cond_10

    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/iw/kk;

    iget-object v5, v0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v10, v0, Lcom/ss/android/socialbase/downloader/iw/no;->ia:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    :cond_2
    iget-object v5, v0, Lcom/ss/android/socialbase/downloader/iw/no;->d:Lcom/ss/android/socialbase/downloader/iw/q;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/iw/q;->q()I

    move-result v5

    :goto_1
    const-string v10, ", threadIndex = "

    const-string v12, ", ratio = "

    const-string v13, ", childLength = "

    const-string v14, ", maxRemainBytes = "

    const-string v15, ", child = "

    const-string v11, "obtainSegment: parent = "

    move-wide/from16 v18, v6

    const-string v6, "SegmentDispatcher"

    const-wide/16 v20, 0x2

    const-wide/16 v22, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_a

    iget-object v5, v2, Lcom/ss/android/socialbase/downloader/iw/kk;->dq:Lcom/ss/android/socialbase/downloader/iw/mp;

    if-eqz v5, :cond_9

    move-wide/from16 v16, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v24, 0xfa0

    move-object/from16 v26, v10

    sub-long v9, v7, v24

    invoke-virtual {v5, v9, v10, v7, v8}, Lcom/ss/android/socialbase/downloader/iw/mp;->dq(JJ)J

    move-result-wide v24

    invoke-virtual {v1, v9, v10, v7, v8}, Lcom/ss/android/socialbase/downloader/iw/mp;->dq(JJ)J

    move-result-wide v7

    const/high16 v9, -0x40800000    # -1.0f

    cmp-long v10, v24, v22

    if-lez v10, :cond_3

    cmp-long v10, v7, v22

    if-lez v10, :cond_3

    long-to-float v10, v7

    add-long v7, v24, v7

    long-to-float v7, v7

    div-float/2addr v10, v7

    goto :goto_2

    :cond_3
    const/high16 v10, -0x40800000    # -1.0f

    :goto_2
    cmpl-float v7, v10, v9

    if-nez v7, :cond_4

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/iw/mp;->d()J

    move-result-wide v7

    move-wide/from16 v24, v7

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/iw/mp;->d()J

    move-result-wide v7

    cmp-long v5, v24, v22

    if-lez v5, :cond_4

    cmp-long v5, v7, v22

    if-lez v5, :cond_4

    long-to-float v5, v7

    add-long v7, v24, v7

    long-to-float v7, v7

    div-float v10, v5, v7

    :cond_4
    const/4 v5, 0x0

    cmpl-float v5, v10, v5

    if-lez v5, :cond_9

    const v5, 0x3f666666    # 0.9f

    mul-float v10, v10, v5

    long-to-float v5, v3

    mul-float v5, v5, v10

    float-to-long v7, v5

    cmp-long v5, v7, v18

    if-gez v5, :cond_5

    move-wide/from16 v7, v18

    :cond_5
    cmp-long v5, v16, v22

    if-lez v5, :cond_6

    cmp-long v5, v7, v16

    if-lez v5, :cond_6

    move-wide/from16 v8, v16

    goto :goto_3

    :cond_6
    move-wide v8, v7

    :goto_3
    div-long v16, v18, v20

    sub-long v18, v3, v16

    cmp-long v5, v8, v18

    if-lez v5, :cond_7

    move-wide/from16 v8, v18

    goto :goto_4

    :cond_7
    cmp-long v5, v8, v16

    if-gez v5, :cond_8

    move-wide/from16 v8, v16

    :cond_8
    :goto_4
    new-instance v5, Lcom/ss/android/socialbase/downloader/iw/kk;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/iw/kk;->s()J

    move-result-wide v16

    sub-long v18, v3, v8

    move-object/from16 v24, v6

    add-long v6, v18, v16

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/iw/kk;->iw()J

    move-result-wide v0

    invoke-direct {v5, v6, v7, v0, v1}, Lcom/ss/android/socialbase/downloader/iw/kk;-><init>(JJ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p1

    iget v1, v6, Lcom/ss/android/socialbase/downloader/iw/mp;->ox:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v24

    invoke-static {v7, v0}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_9
    move-object v7, v6

    goto/16 :goto_6

    :cond_a
    move-object v7, v6

    move-wide/from16 v16, v8

    const/4 v0, 0x2

    move-object v6, v1

    move-object v1, v10

    if-ne v5, v0, :cond_f

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/ss/android/socialbase/downloader/iw/no;->mp:J

    iget-object v5, v0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v24

    sub-long v8, v8, v24

    invoke-direct/range {p0 .. p2}, Lcom/ss/android/socialbase/downloader/iw/no;->p(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/fw;)F

    move-result v5

    long-to-float v8, v8

    mul-float v8, v8, v5

    float-to-long v8, v8

    cmp-long v10, v8, v18

    if-gez v10, :cond_b

    move-wide/from16 v8, v18

    :cond_b
    cmp-long v10, v16, v22

    if-lez v10, :cond_c

    cmp-long v10, v8, v16

    if-lez v10, :cond_c

    move-wide/from16 v8, v16

    :cond_c
    div-long v16, v18, v20

    sub-long v18, v3, v16

    cmp-long v10, v8, v18

    if-lez v10, :cond_d

    move-wide/from16 v8, v18

    goto :goto_5

    :cond_d
    cmp-long v10, v8, v16

    if-gez v10, :cond_e

    move-wide/from16 v8, v16

    :cond_e
    :goto_5
    new-instance v10, Lcom/ss/android/socialbase/downloader/iw/kk;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/iw/kk;->s()J

    move-result-wide v16

    sub-long v18, v3, v8

    move-object/from16 v24, v7

    add-long v6, v18, v16

    move-object/from16 v26, v1

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/iw/kk;->iw()J

    move-result-wide v0

    invoke-direct {v10, v6, v7, v0, v1}, Lcom/ss/android/socialbase/downloader/iw/kk;-><init>(JJ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    iget v1, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->ox:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v24

    invoke-static {v7, v0}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_f
    :goto_6
    new-instance v0, Lcom/ss/android/socialbase/downloader/iw/kk;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/iw/kk;->s()J

    move-result-wide v5

    div-long v3, v3, v20

    add-long/2addr v3, v5

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/iw/kk;->iw()J

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/ss/android/socialbase/downloader/iw/kk;-><init>(JJ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",child = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic ox(Lcom/ss/android/socialbase/downloader/iw/no;)Lcom/ss/android/socialbase/downloader/model/p;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->o:Lcom/ss/android/socialbase/downloader/model/p;

    return-object p0
.end method

.method private ox(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/iw/fw;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ji:Z

    if-eqz v5, :cond_2

    const-string v5, "onDnsResolved: ip = "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    new-instance v5, Lcom/ss/android/socialbase/downloader/iw/fw;

    invoke-direct {v5, p1, v4}, Lcom/ss/android/socialbase/downloader/iw/fw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v5, Lcom/ss/android/socialbase/downloader/iw/fw;->ox:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iget-object v6, v5, Lcom/ss/android/socialbase/downloader/iw/fw;->ox:Ljava/lang/String;

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-lez v3, :cond_9

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_6
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/iw/fw;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    if-lez v3, :cond_8

    if-nez v0, :cond_5

    :cond_8
    return-object p1

    :cond_9
    :goto_2
    return-object v0
.end method

.method private ox()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->gh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->o:Lcom/ss/android/socialbase/downloader/model/p;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->no:Lcom/ss/android/socialbase/downloader/model/p;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->gh:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->o:Lcom/ss/android/socialbase/downloader/model/p;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->no:Lcom/ss/android/socialbase/downloader/model/p;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->fw:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    throw v0

    :cond_2
    :goto_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private ox(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/iw/kk;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/iw/jy;->d(Ljava/util/List;)J

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "checkDownloadBytes: getCurBytes = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", totalBytes = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", downloadedBytes = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SegmentDispatcher"

    invoke-static {v2, p1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    :cond_0
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCurBytes(J)V

    :cond_1
    return-void
.end method

.method private ox(Lcom/ss/android/socialbase/downloader/iw/mp;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/iw/no;->p(Lcom/ss/android/socialbase/downloader/iw/mp;)Lcom/ss/android/socialbase/downloader/iw/fw;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/iw/mp;->dq(Lcom/ss/android/socialbase/downloader/iw/fw;)Z

    move-result p1

    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private p(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/fw;)F
    .locals 7

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/iw/mp;->d()J

    move-result-wide v0

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ia:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x1

    if-gt p2, v2, :cond_0

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->d:Lcom/ss/android/socialbase/downloader/iw/q;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/iw/q;->dq()I

    move-result p2

    :cond_0
    const-wide/16 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    cmp-long v6, v0, v3

    if-gtz v6, :cond_5

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->d:Lcom/ss/android/socialbase/downloader/iw/q;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/q;->mp()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-lez v1, :cond_1

    cmpl-float v1, v0, v5

    if-ltz v1, :cond_2

    :cond_1
    int-to-float v0, p2

    div-float v0, v5, v0

    :cond_2
    iget p1, p1, Lcom/ss/android/socialbase/downloader/iw/mp;->ox:I

    if-nez p1, :cond_3

    return v0

    :cond_3
    if-le p2, v2, :cond_4

    sub-float/2addr v5, v0

    sub-int/2addr p2, v2

    :cond_4
    int-to-float p1, p2

    div-float/2addr v5, p1

    return v5

    :cond_5
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->jy()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-lez p1, :cond_4

    long-to-float p1, v0

    long-to-float p2, v2

    div-float/2addr p1, p2

    return p1
.end method

.method private p(Lcom/ss/android/socialbase/downloader/iw/mp;)Lcom/ss/android/socialbase/downloader/iw/fw;
    .locals 5

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->kk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/iw/fw;

    iget-object v4, p1, Lcom/ss/android/socialbase/downloader/iw/mp;->d:Lcom/ss/android/socialbase/downloader/iw/fw;

    if-eq v3, v4, :cond_0

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/iw/fw;->p()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v2, :cond_1

    move-object v2, v3

    :cond_1
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/iw/fw;->dq()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->d:Lcom/ss/android/socialbase/downloader/iw/q;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/iw/q;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->d:Lcom/ss/android/socialbase/downloader/iw/q;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/iw/q;->ox()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v1

    :cond_4
    return-object v2
.end method

.method public static synthetic p(Lcom/ss/android/socialbase/downloader/iw/no;)Lcom/ss/android/socialbase/downloader/model/p;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->no:Lcom/ss/android/socialbase/downloader/model/p;

    return-object p0
.end method

.method private p()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->s:Lcom/ss/android/socialbase/downloader/iw/mn;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ox:Lcom/ss/android/socialbase/downloader/iw/d;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/iw/mn;->dq(Lcom/ss/android/socialbase/downloader/iw/p;)V
    :try_end_0
    .catch Lcom/ss/android/socialbase/downloader/iw/f; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    nop

    goto :goto_1

    :goto_0
    const-string v1, "SegmentDispatcher"

    const-string v2, "dispatchSegments: loopAndWrite e = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    throw v0

    :goto_1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mn:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->iw:Z

    if-eqz v0, :cond_0

    goto :goto_6

    :cond_0
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/iw/kk;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(Ljava/util/List;Lcom/ss/android/socialbase/downloader/iw/kk;Z)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/iw/no;->ox(Ljava/util/List;)V

    monitor-exit p0

    goto :goto_4

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->le:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->fw:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-nez v0, :cond_3

    goto :goto_5

    :cond_3
    const-string v0, "SegmentDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatchSegments: loopAndWrite  failedException = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->fw:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->fw:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    throw v0

    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/p/dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/util/List;)V

    :cond_5
    const-string v0, "SegmentDispatcher"

    const-string v1, "dispatchSegments::download finished"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_6
    return-void
.end method

.method private p(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/iw/kk;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/iw/kk;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox()J

    move-result-wide v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-lez v8, :cond_0

    new-instance v8, Lcom/ss/android/socialbase/downloader/iw/kk;

    sub-long/2addr v1, v4

    invoke-direct {v8, v6, v7, v1, v2}, Lcom/ss/android/socialbase/downloader/iw/kk;-><init>(JJ)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/kk;->toString()Ljava/lang/String;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/iw/kk;->toString()Ljava/lang/String;

    invoke-direct {p0, p1, v8, v3}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(Ljava/util/List;Lcom/ss/android/socialbase/downloader/iw/kk;Z)V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "SegmentDispatcher"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/iw/kk;

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ss/android/socialbase/downloader/iw/kk;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/iw/kk;->iw()J

    move-result-wide v9

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox()J

    move-result-wide v11

    sub-long/2addr v11, v4

    cmp-long v13, v9, v11

    if-gez v13, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "fixSegment: segment = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", new end = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v1, v9, v10}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox(J)V

    :cond_1
    move-object v1, v8

    goto :goto_0

    :cond_2
    invoke-static {v3, p1}, Lg/awf;->q(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/iw/kk;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    const-wide/16 v8, -0x1

    cmp-long v3, v0, v6

    if-lez v3, :cond_4

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/iw/kk;->iw()J

    move-result-wide v6

    cmp-long v3, v6, v8

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/iw/kk;->iw()J

    move-result-wide v6

    sub-long/2addr v0, v4

    cmp-long v3, v6, v0

    if-gez v3, :cond_3

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fixSegment: last segment = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", new end=-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v8, v9}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox(J)V

    return-void
.end method

.method private q()Z
    .locals 8

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mp:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gtz v5, :cond_0

    iput-boolean v4, p0, Lcom/ss/android/socialbase/downloader/iw/no;->cd:Z

    return v4

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/iw/jy;->dq(Ljava/util/List;)J

    move-result-wide v2

    const-string v5, "SegmentDispatcher"

    const-string v6, "isAllContentDownloaded: firstOffset = "

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v5, v2, v0

    if-ltz v5, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->cd:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/ss/android/socialbase/downloader/iw/no;->cd:Z

    monitor-exit p0

    return v4

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static synthetic s(Lcom/ss/android/socialbase/downloader/iw/no;)J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->k:J

    return-wide v0
.end method

.method private s()V
    .locals 7

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mp:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ig:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->d:Lcom/ss/android/socialbase/downloader/iw/q;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/q;->dq()I

    move-result v0

    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mp:J

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/iw/no;->d:Lcom/ss/android/socialbase/downloader/iw/q;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/iw/q;->ia()J

    move-result-wide v5

    div-long/2addr v1, v5

    long-to-int v2, v1

    if-le v0, v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    :goto_1
    const-string v1, "SegmentDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dispatchReadThread: totalLength = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mp:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", threadCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v0, :cond_3

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    monitor-enter p0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ia:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_7

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mn:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->iw:Z

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->o()Lcom/ss/android/socialbase/downloader/iw/fw;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(Lcom/ss/android/socialbase/downloader/iw/fw;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->d:Lcom/ss/android/socialbase/downloader/iw/q;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/q;->iw()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    :cond_7
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private s(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/kk;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/iw/o;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "applySegment: start "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SegmentDispatcher"

    invoke-static {v4, v3}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/ss/android/socialbase/downloader/iw/kk;->dq:Lcom/ss/android/socialbase/downloader/iw/mp;

    const-string v5, "applySegment: "

    if-ne v3, v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is already the owner of "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v3, v2, Lcom/ss/android/socialbase/downloader/iw/kk;->dq:Lcom/ss/android/socialbase/downloader/iw/mp;

    const/4 v6, 0x1

    if-nez v3, :cond_16

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/iw/mp;->ia()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/iw/kk;->s()J

    move-result-wide v9

    cmp-long v3, v7, v9

    if-nez v3, :cond_15

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox()J

    move-result-wide v7

    invoke-direct {v0, v7, v8}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(J)I

    move-result v3

    const/4 v10, -0x1

    if-eq v3, v10, :cond_14

    iget-object v10, v0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ss/android/socialbase/downloader/iw/kk;

    if-eqz v10, :cond_14

    const-wide/16 v11, 0x0

    if-eq v10, v2, :cond_6

    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox()J

    move-result-wide v13

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox()J

    move-result-wide v15

    cmp-long v17, v13, v15

    if-nez v17, :cond_5

    invoke-direct {v0, v10}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(Lcom/ss/android/socialbase/downloader/iw/kk;)J

    move-result-wide v13

    cmp-long v15, v13, v11

    if-lez v15, :cond_5

    iget-object v15, v10, Lcom/ss/android/socialbase/downloader/iw/kk;->dq:Lcom/ss/android/socialbase/downloader/iw/mp;

    if-eqz v15, :cond_3

    const-wide/32 v16, 0x80000

    cmp-long v18, v13, v16

    if-gez v18, :cond_1

    move-wide/from16 v16, v11

    iget-wide v11, v1, Lcom/ss/android/socialbase/downloader/iw/mp;->iw:J

    move-object/from16 v19, v10

    iget-wide v9, v15, Lcom/ss/android/socialbase/downloader/iw/mp;->iw:J

    sub-long/2addr v11, v9

    const-wide/16 v9, 0x3e8

    cmp-long v20, v11, v9

    if-lez v20, :cond_2

    invoke-virtual/range {v19 .. v19}, Lcom/ss/android/socialbase/downloader/iw/kk;->s()J

    move-result-wide v9

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/iw/kk;->s()J

    move-result-wide v11

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x2

    div-long/2addr v13, v11

    cmp-long v11, v9, v13

    if-gez v11, :cond_2

    goto :goto_0

    :cond_1
    move-object/from16 v19, v10

    :cond_2
    const-string v1, "applySegmentLocked: has same segment, but owner is normal, abort. segmentInList = "

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object/from16 v19, v10

    move-wide/from16 v16, v11

    :goto_0
    if-eqz v15, :cond_4

    const-string v9, "applySegmentLocked: has same segment,and owner too slow, segmentInList = "

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v15, v6}, Lcom/ss/android/socialbase/downloader/iw/mp;->dq(Z)V

    goto :goto_1

    :cond_4
    const-string v9, "applySegmentLocked: has same segment and no owner, segmentInList = "

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    invoke-virtual/range {v19 .. v19}, Lcom/ss/android/socialbase/downloader/iw/kk;->iw()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox(J)V

    invoke-virtual/range {v19 .. v19}, Lcom/ss/android/socialbase/downloader/iw/kk;->o()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/ss/android/socialbase/downloader/iw/kk;->d(I)V

    iget-object v9, v0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-interface {v9, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object/from16 v19, v10

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not exist! but has another same segment, segmentInList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v19

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/ss/android/socialbase/downloader/iw/o;

    const-string v2, "segment not exist, but has another same segment"

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/ss/android/socialbase/downloader/iw/o;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_6
    move-wide/from16 v16, v11

    :goto_3
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/iw/kk;->dq()J

    move-result-wide v9

    add-int/lit8 v11, v3, -0x1

    :goto_4
    if-ltz v11, :cond_d

    iget-object v14, v0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ss/android/socialbase/downloader/iw/kk;

    invoke-virtual {v14}, Lcom/ss/android/socialbase/downloader/iw/kk;->iw()J

    move-result-wide v18

    cmp-long v15, v18, v16

    if-lez v15, :cond_7

    cmp-long v15, v18, v7

    if-ltz v15, :cond_a

    :cond_7
    cmp-long v15, v9, v16

    if-gtz v15, :cond_9

    invoke-virtual {v14}, Lcom/ss/android/socialbase/downloader/iw/kk;->s()J

    move-result-wide v18

    cmp-long v15, v18, v7

    if-gtz v15, :cond_8

    goto :goto_5

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "applySegment:prev\'s current has over this start, prev = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", segment = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v1, Lcom/ss/android/socialbase/downloader/iw/o;

    const/4 v2, 0x3

    const-string v3, "prev overstep"

    invoke-direct {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/iw/o;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_9
    :goto_5
    iget-object v15, v14, Lcom/ss/android/socialbase/downloader/iw/kk;->dq:Lcom/ss/android/socialbase/downloader/iw/mp;

    if-nez v15, :cond_b

    const-wide/16 v18, 0x1

    sub-long v12, v7, v18

    invoke-virtual {v14, v12, v13}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox(J)V

    const-string v12, "applySegment: prev set end, prev = "

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/ss/android/socialbase/downloader/iw/kk;->dq()J

    move-result-wide v12

    cmp-long v14, v12, v16

    if-lez v14, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    :cond_b
    const-wide/16 v18, 0x1

    iget-object v9, v14, Lcom/ss/android/socialbase/downloader/iw/kk;->dq:Lcom/ss/android/socialbase/downloader/iw/mp;

    sub-long v10, v7, v18

    invoke-virtual {v9, v10, v11}, Lcom/ss/android/socialbase/downloader/iw/mp;->dq(J)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v14, v10, v11}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox(J)V

    const-string v9, "applySegment: adjustSegmentEndOffset succeed, prev = "

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    const-string v1, "applySegment: adjustSegmentEndOffset filed, prev = "

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/ss/android/socialbase/downloader/iw/o;

    const/4 v2, 0x4

    const-string v3, "prev end adjust fail"

    invoke-direct {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/iw/o;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_d
    const-wide/16 v18, 0x1

    :goto_6
    add-int/2addr v3, v6

    iget-object v6, v0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    :goto_7
    if-ge v3, v6, :cond_11

    iget-object v9, v0, Lcom/ss/android/socialbase/downloader/iw/no;->jy:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ss/android/socialbase/downloader/iw/kk;

    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/iw/kk;->dq()J

    move-result-wide v10

    cmp-long v12, v10, v16

    if-gtz v12, :cond_f

    iget-object v10, v9, Lcom/ss/android/socialbase/downloader/iw/kk;->dq:Lcom/ss/android/socialbase/downloader/iw/mp;

    if-eqz v10, :cond_e

    goto :goto_8

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_f
    :goto_8
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/iw/kk;->iw()J

    move-result-wide v10

    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox()J

    move-result-wide v12

    cmp-long v3, v10, v16

    if-lez v3, :cond_10

    cmp-long v3, v10, v12

    if-ltz v3, :cond_11

    :cond_10
    sub-long v12, v12, v18

    invoke-virtual {v2, v12, v13}, Lcom/ss/android/socialbase/downloader/iw/kk;->ox(J)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "applySegment: segment set end:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", later = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/iw/kk;->iw()J

    move-result-wide v9

    cmp-long v3, v9, v16

    if-lez v3, :cond_13

    cmp-long v3, v7, v9

    if-gtz v3, :cond_12

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/iw/kk;->s()J

    move-result-wide v6

    cmp-long v3, v6, v9

    if-gtz v3, :cond_12

    goto :goto_9

    :cond_12
    new-instance v1, Lcom/ss/android/socialbase/downloader/iw/o;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2}, Lcom/ss/android/socialbase/downloader/iw/o;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_13
    :goto_9
    iput-object v1, v2, Lcom/ss/android/socialbase/downloader/iw/kk;->dq:Lcom/ss/android/socialbase/downloader/iw/mp;

    const-string v1, "applySegment: OK "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not exist! segmentIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/ss/android/socialbase/downloader/iw/o;

    const-string v2, "segment not exist"

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/ss/android/socialbase/downloader/iw/o;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_15
    new-instance v1, Lcom/ss/android/socialbase/downloader/iw/o;

    const/4 v2, 0x5

    const-string v3, "applySegment"

    invoke-direct {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/iw/o;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already has an owner:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/ss/android/socialbase/downloader/iw/kk;->dq:Lcom/ss/android/socialbase/downloader/iw/mp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/ss/android/socialbase/downloader/iw/o;

    const-string v2, "segment already has an owner"

    invoke-direct {v1, v6, v2}, Lcom/ss/android/socialbase/downloader/iw/o;-><init>(ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public d()V
    .locals 2

    const-string v0, "SegmentDispatcher"

    const-string v1, "pause1"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mn:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ia:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/iw/mp;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/iw/mp;->s()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->s:Lcom/ss/android/socialbase/downloader/iw/mn;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/mn;->d()V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ox:Lcom/ss/android/socialbase/downloader/iw/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/d;->ox()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d(Lcom/ss/android/socialbase/downloader/iw/mp;)V
    .locals 3

    const-string v0, "SegmentDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReaderExit: threadIndex = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/ss/android/socialbase/downloader/iw/mp;->ox:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/iw/mp;->ox(Z)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ia:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->mp()V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ia:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->q()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ia:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/iw/mp;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/mp;->s()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->no()V

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/kk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/iw/no;->s(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/kk;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/fw;)Lcom/ss/android/socialbase/downloader/iw/kk;
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->iw:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mn:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/iw/no;->d(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/fw;)Lcom/ss/android/socialbase/downloader/iw/kk;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/iw/kk;->ia()V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/iw/kk;->o()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    new-instance p2, Lcom/ss/android/socialbase/downloader/iw/kk;

    invoke-direct {p2, p1}, Lcom/ss/android/socialbase/downloader/iw/kk;-><init>(Lcom/ss/android/socialbase/downloader/iw/kk;)V

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq()V
    .locals 2

    const-string v0, "SegmentDispatcher"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->iw:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ia:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/iw/mp;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/iw/mp;->s()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->s:Lcom/ss/android/socialbase/downloader/iw/mn;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/mn;->dq()V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ox:Lcom/ss/android/socialbase/downloader/iw/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/d;->ox()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/iw/mp;)V
    .locals 2

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ji:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReaderRun, threadIndex = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/ss/android/socialbase/downloader/iw/mp;->ox:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SegmentDispatcher"

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/fw;Lcom/ss/android/socialbase/downloader/iw/kk;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string p2, "SegmentDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSegmentFailed: segment = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", e = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/iw/mp;->d(Z)V

    iget p1, p1, Lcom/ss/android/socialbase/downloader/iw/mp;->ox:I

    if-nez p1, :cond_0

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/iw/no;->fw:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->ig()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->fw:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-nez p1, :cond_1

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/iw/no;->fw:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    :cond_1
    iput-boolean p2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->le:Z

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->fw:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/fw;Lcom/ss/android/socialbase/downloader/iw/kk;Lcom/ss/android/socialbase/downloader/exception/BaseException;II)V
    .locals 0

    invoke-static {p4}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result p2

    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result p3

    const/16 p4, 0x417

    if-eq p3, p4, :cond_0

    const/16 p4, 0x432

    if-eq p3, p4, :cond_0

    const/16 p4, 0x41f

    if-ne p3, p4, :cond_1

    :cond_0
    const/4 p2, 0x1

    :cond_1
    if-nez p2, :cond_3

    if-lt p5, p6, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/iw/no;->ox(Lcom/ss/android/socialbase/downloader/iw/mp;)Z

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/kk;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/iw/kk;->kk()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/kk;Lcom/ss/android/socialbase/downloader/iw/fw;Lcom/ss/android/socialbase/downloader/model/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Lcom/ss/android/socialbase/downloader/exception/kk;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->iw:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mn:Z

    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/iw/no;->d(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/kk;Lcom/ss/android/socialbase/downloader/iw/fw;Lcom/ss/android/socialbase/downloader/model/p;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/iw/mp;->d(Z)V

    iget-wide p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mp:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-gtz p3, :cond_1

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mp:J

    cmp-long p3, p1, v0

    if-gtz p3, :cond_0

    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/p;->o()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mp:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->s()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->d:Lcom/ss/android/socialbase/downloader/iw/q;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/iw/q;->iw()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->s()V

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    new-instance p1, Lcom/ss/android/socialbase/downloader/iw/f;

    const-string p2, "connected"

    invoke-direct {p1, p2}, Lcom/ss/android/socialbase/downloader/iw/f;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dq(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mn:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->iw:Z

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/iw/no;->ox(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p2, 0x0

    :goto_0
    monitor-enter p0

    if-eqz p2, :cond_1

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/iw/no;->d(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ig:Z

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->d:Lcom/ss/android/socialbase/downloader/iw/q;

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->kk:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/iw/q;->dq(I)V

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->s()V

    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_2
    :goto_3
    return-void
.end method

.method public dq(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/iw/kk;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "finally pause"

    const-string v1, "SegmentDispatcher"

    :try_start_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->iw()V

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/iw/no;->d(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->s()V

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->mn()V

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->kk()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->ox()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v4, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseAllConnectTime(J)V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v4, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstSpeedTime(J)V

    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mn:Z

    const/4 v2, 0x1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->iw:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->p:Lcom/ss/android/socialbase/downloader/ia/iw;

    iget-wide v3, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mp:J

    invoke-interface {p1, v3, v4}, Lcom/ss/android/socialbase/downloader/ia/iw;->dq(J)V

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->ia()V

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mn:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->iw:Z

    if-nez p1, :cond_1

    :goto_0
    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->d()V

    :cond_1
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->i:Lcom/ss/android/socialbase/downloader/ia/s;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/ia/s;->d()V

    return v2

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mn:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->iw:Z

    if-nez p1, :cond_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2, v4, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseAllConnectTime(J)V

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2, v4, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstSpeedTime(J)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->mn:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->iw:Z

    if-nez v2, :cond_3

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/iw/no;->d()V

    :cond_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->i:Lcom/ss/android/socialbase/downloader/ia/s;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/ia/s;->d()V

    throw p1
.end method

.method public ox(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/kk;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p2, Lcom/ss/android/socialbase/downloader/iw/kk;->dq:Lcom/ss/android/socialbase/downloader/iw/mp;

    if-ne v0, p1, :cond_0

    const-string v0, "SegmentDispatcher"

    const-string v1, "unApplySegment "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/iw/mp;->p()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/ss/android/socialbase/downloader/iw/kk;->p(J)V

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/ss/android/socialbase/downloader/iw/kk;->dq:Lcom/ss/android/socialbase/downloader/iw/mp;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/iw/mp;->dq()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public p(Lcom/ss/android/socialbase/downloader/iw/mp;Lcom/ss/android/socialbase/downloader/iw/kk;)Lcom/ss/android/socialbase/downloader/iw/s;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance p1, Lcom/ss/android/socialbase/downloader/iw/ig;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/no;->ox:Lcom/ss/android/socialbase/downloader/iw/d;

    invoke-direct {p1, v0, v1, p2}, Lcom/ss/android/socialbase/downloader/iw/ig;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/iw/d;Lcom/ss/android/socialbase/downloader/iw/kk;)V

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/iw/no;->s:Lcom/ss/android/socialbase/downloader/iw/mn;

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/iw/mn;->dq(Lcom/ss/android/socialbase/downloader/iw/ig;)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/iw/ig;->dq()Lcom/ss/android/socialbase/downloader/iw/s;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.class public Lcom/ss/android/socialbase/downloader/network/dq/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/network/mn;


# static fields
.field private static final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final d:J

.field protected final dq:Ljava/lang/String;

.field private ia:J

.field private iw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private kk:Z

.field private mn:I

.field private no:Lcom/ss/android/socialbase/downloader/network/mn;

.field private o:Z

.field protected ox:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/ox;",
            ">;"
        }
    .end annotation
.end field

.field protected final p:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->s:Ljava/util/ArrayList;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Content-Range"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Accept-Ranges"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Etag"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Content-Disposition"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;J)V
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->iw:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->p:Ljava/lang/Object;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->dq:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->ox:Ljava/util/List;

    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->d:J

    return-void
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/network/mn;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/socialbase/downloader/network/mn;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/ss/android/socialbase/downloader/network/mn;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public d()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->mn:I

    return v0
.end method

.method public dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->iw:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->no:Lcom/ss/android/socialbase/downloader/network/mn;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/network/mn;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->iw:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->o:Z

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->dq:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->ox:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/mn;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->no:Lcom/ss/android/socialbase/downloader/network/mn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->no:Lcom/ss/android/socialbase/downloader/network/mn;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->iw:Ljava/util/Map;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->no:Lcom/ss/android/socialbase/downloader/network/mn;

    invoke-direct {p0, v3, v2}, Lcom/ss/android/socialbase/downloader/network/dq/ox;->dq(Lcom/ss/android/socialbase/downloader/network/mn;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->no:Lcom/ss/android/socialbase/downloader/network/mn;

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/network/mn;->d()I

    move-result v2

    iput v2, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->mn:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->ia:J

    iget v2, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->mn:I

    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/downloader/network/dq/ox;->dq(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->kk:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->o:Z

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->p:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->p:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->no:Lcom/ss/android/socialbase/downloader/network/mn;

    if-eqz v3, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->iw:Ljava/util/Map;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->no:Lcom/ss/android/socialbase/downloader/network/mn;

    invoke-direct {p0, v4, v3}, Lcom/ss/android/socialbase/downloader/network/dq/ox;->dq(Lcom/ss/android/socialbase/downloader/network/mn;Ljava/util/Map;)V

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->no:Lcom/ss/android/socialbase/downloader/network/mn;

    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/network/mn;->d()I

    move-result v3

    iput v3, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->mn:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->ia:J

    iget v3, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->mn:I

    invoke-virtual {p0, v3}, Lcom/ss/android/socialbase/downloader/network/dq/ox;->dq(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->kk:Z

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->o:Z

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->p:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public dq(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ia()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/ox;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->ox:Ljava/util/List;

    return-object v0
.end method

.method public iw()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->ia:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/ss/android/socialbase/downloader/network/dq/d;->d:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public kk()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->iw:Ljava/util/Map;

    return-object v0
.end method

.method public mn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->o:Z

    return v0
.end method

.method public ox()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->no:Lcom/ss/android/socialbase/downloader/network/mn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/mn;->ox()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->o:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->iw:Ljava/util/Map;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->p:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/network/dq/ox;->kk:Z

    return v0
.end method

.class public Lcom/ss/android/downloadlib/iw/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/ox/o;


# static fields
.field private static volatile dq:Lcom/ss/android/downloadlib/iw/ox;


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/appdownloader/ox/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/iw/ox;->d:Ljava/util/List;

    new-instance v1, Lcom/ss/android/downloadlib/iw/d;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/iw/d;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ss/android/downloadlib/iw/ox;->d:Ljava/util/List;

    new-instance v1, Lcom/ss/android/downloadlib/iw/dq;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/iw/dq;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static dq()Lcom/ss/android/downloadlib/iw/ox;
    .locals 2

    sget-object v0, Lcom/ss/android/downloadlib/iw/ox;->dq:Lcom/ss/android/downloadlib/iw/ox;

    if-nez v0, :cond_1

    const-class v0, Lcom/ss/android/downloadlib/iw/ox;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/iw/ox;->dq:Lcom/ss/android/downloadlib/iw/ox;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/downloadlib/iw/ox;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/iw/ox;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/iw/ox;->dq:Lcom/ss/android/downloadlib/iw/ox;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/ss/android/downloadlib/iw/ox;->dq:Lcom/ss/android/downloadlib/iw/ox;

    return-object v0
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/iw/ox;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/socialbase/appdownloader/ox/kk;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/downloadlib/iw/ox;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/socialbase/appdownloader/ox/kk;)V

    return-void
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/socialbase/appdownloader/ox/kk;)V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/downloadlib/iw/ox;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p2, v0, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/iw/ox;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/appdownloader/ox/o;

    new-instance v1, Lcom/ss/android/downloadlib/iw/ox$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/ss/android/downloadlib/iw/ox$1;-><init>(Lcom/ss/android/downloadlib/iw/ox;ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/ox/kk;)V

    invoke-interface {v0, p1, v1}, Lcom/ss/android/socialbase/appdownloader/ox/o;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/ox/kk;)V

    return-void

    :cond_1
    :goto_0
    invoke-interface {p3}, Lcom/ss/android/socialbase/appdownloader/ox/kk;->dq()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/ox/kk;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ss/android/downloadlib/iw/ox;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/ss/android/downloadlib/iw/ox;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/socialbase/appdownloader/ox/kk;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/ss/android/socialbase/appdownloader/ox/kk;->dq()V

    :cond_2
    return-void
.end method

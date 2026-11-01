.class public Lcom/ss/android/socialbase/downloader/network/dq/d;
.super Ljava/lang/Object;


# static fields
.field static d:J

.field static dq:J

.field private static final ox:Landroid/os/HandlerThread;

.field private static final p:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Downloader-preconnecter"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/network/dq/d;->ox:Landroid/os/HandlerThread;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/dq/d;->d()V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/ss/android/socialbase/downloader/network/dq/d;->p:Landroid/os/Handler;

    new-instance v0, Lcom/ss/android/socialbase/downloader/network/dq/d$1;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/network/dq/d$1;-><init>()V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static d(JLcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/ox;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/ox;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    :goto_0
    move-object v1, p2

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->geteTag()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    const-wide/16 v4, 0x0

    move-wide v2, p0

    move-object v0, p3

    invoke-static/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static d()V
    .locals 4

    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "preconnect_connection_outdate_time"

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/ss/android/socialbase/downloader/network/dq/d;->dq:J

    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "preconnect_head_info_outdate_time"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/ss/android/socialbase/downloader/network/dq/d;->d:J

    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/network/dq/dq;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v1

    const-string v2, "preconnect_max_cache_size"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/network/dq/dq;->dq(I)V

    return-void
.end method

.method public static dq()Landroid/os/Looper;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/network/dq/d;->ox:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic dq(JLcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/network/dq/d;->d(JLcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/o;)V
    .locals 2

    sget-object v0, Lcom/ss/android/socialbase/downloader/network/dq/d;->p:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/socialbase/downloader/network/dq/d$2;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/network/dq/d$2;-><init>(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

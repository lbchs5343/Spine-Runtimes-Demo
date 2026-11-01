.class public Lcom/ss/android/downloadlib/iw/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/ox/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/dq;)V
    .locals 2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/api/dq/d;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/downloadlib/d/iw;->dq(Lcom/ss/android/downloadad/api/dq/d;)Z

    move-result v0

    invoke-static {p1}, Lcom/ss/android/downloadlib/d/iw;->d(Lcom/ss/android/downloadad/api/dq/d;)Z

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ss/android/downloadlib/iw/dq$3;

    invoke-direct {v0, p0, p2}, Lcom/ss/android/downloadlib/iw/dq$3;-><init>(Lcom/ss/android/downloadlib/iw/dq;Lcom/ss/android/downloadlib/guide/install/dq;)V

    invoke-static {p1, v0}, Lcom/ss/android/downloadlib/d/ox;->dq(Lcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/guide/install/dq;)V

    return-void

    :cond_1
    :goto_0
    invoke-interface {p2}, Lcom/ss/android/downloadlib/guide/install/dq;->dq()V

    return-void
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/iw/dq;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/dq;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ss/android/downloadlib/iw/dq;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/dq;)V

    return-void
.end method


# virtual methods
.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/dq;)V
    .locals 2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/api/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/ss/android/downloadlib/d/kk;->dq(Lcom/ss/android/downloadad/api/dq/dq;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/ss/android/downloadlib/iw/dq$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/downloadlib/iw/dq$2;-><init>(Lcom/ss/android/downloadlib/iw/dq;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/dq;)V

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->dq(Lcom/ss/android/downloadad/api/dq/dq;Lcom/ss/android/downloadlib/guide/install/dq;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ss/android/downloadlib/iw/dq;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/dq;)V

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/ox/kk;)V
    .locals 1

    new-instance v0, Lcom/ss/android/downloadlib/iw/dq$1;

    invoke-direct {v0, p0, p2}, Lcom/ss/android/downloadlib/iw/dq$1;-><init>(Lcom/ss/android/downloadlib/iw/dq;Lcom/ss/android/socialbase/appdownloader/ox/kk;)V

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/downloadlib/iw/dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/dq;)V

    return-void
.end method

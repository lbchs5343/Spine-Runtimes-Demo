.class Lcom/ss/android/downloadlib/iw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/download/api/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/ss/android/download/api/config/d;)Lcom/ss/android/download/api/dq;
    .locals 2

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/no;->dq(Lcom/ss/android/download/api/config/d;)V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/dq/dq;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/iw$1;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/iw$1;-><init>(Lcom/ss/android/downloadlib/iw;Lcom/ss/android/download/api/config/d;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq(Lcom/ss/android/socialbase/downloader/dq/dq$ox;)V

    return-object p0
.end method

.method public dq(Lcom/ss/android/download/api/config/fw;)Lcom/ss/android/download/api/dq;
    .locals 0

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/no;->dq(Lcom/ss/android/download/api/config/fw;)V

    return-object p0
.end method

.method public dq(Lcom/ss/android/download/api/config/ia;)Lcom/ss/android/download/api/dq;
    .locals 0

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/no;->dq(Lcom/ss/android/download/api/config/ia;)V

    return-object p0
.end method

.method public dq(Lcom/ss/android/download/api/config/ig;)Lcom/ss/android/download/api/dq;
    .locals 0

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/no;->dq(Lcom/ss/android/download/api/config/ig;)V

    return-object p0
.end method

.method public dq(Lcom/ss/android/download/api/config/kk;)Lcom/ss/android/download/api/dq;
    .locals 0

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/no;->dq(Lcom/ss/android/download/api/config/kk;)V

    return-object p0
.end method

.method public dq(Lcom/ss/android/download/api/config/mn;)Lcom/ss/android/download/api/dq;
    .locals 0

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/no;->dq(Lcom/ss/android/download/api/config/mn;)V

    return-object p0
.end method

.method public dq(Lcom/ss/android/download/api/config/o;)Lcom/ss/android/download/api/dq;
    .locals 0

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/no;->dq(Lcom/ss/android/download/api/config/o;)V

    return-object p0
.end method

.method public dq(Lcom/ss/android/download/api/model/dq;)Lcom/ss/android/download/api/dq;
    .locals 0

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/no;->dq(Lcom/ss/android/download/api/model/dq;)V

    return-object p0
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;)Lcom/ss/android/download/api/dq;
    .locals 1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getNotificationClickCallback()Lcom/ss/android/socialbase/downloader/depend/op;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/downloadlib/iw$2;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/iw$2;-><init>(Lcom/ss/android/downloadlib/iw;)V

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->notificationClickCallback(Lcom/ss/android/socialbase/downloader/depend/op;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    :cond_0
    new-instance v0, Lcom/ss/android/downloadlib/ox/ox;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/ox/ox;-><init>()V

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->addDownloadCompleteHandler(Lcom/ss/android/socialbase/downloader/depend/mp;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->initOrCover(Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;Z)V

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/ss/android/download/api/dq;
    .locals 0

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/no;->dq(Ljava/lang/String;)V

    return-object p0
.end method

.method public dq()V
    .locals 2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object v0

    const-string v1, "ttdownloader init error"

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/s/ox;->dq(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/no;->dq(Lcom/ss/android/download/api/d/dq;)V

    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->le()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/p;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/dq;->dq()Lcom/ss/android/downloadlib/dq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Lcom/ss/android/socialbase/downloader/depend/ir;)V

    invoke-static {}, Lcom/ss/android/downloadlib/s;->dq()Lcom/ss/android/downloadlib/s;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/iw$3;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/iw$3;-><init>(Lcom/ss/android/downloadlib/iw;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/s;->d(Ljava/lang/Runnable;)V

    return-void
.end method

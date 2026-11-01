.class Lcom/ss/android/downloadlib/addownload/ia$dq;
.super Lcom/ss/android/socialbase/downloader/depend/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/addownload/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private dq:Lcom/ss/android/downloadlib/mn/q;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/mn/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/dq;-><init>()V

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/ia$dq;->dq:Lcom/ss/android/downloadlib/mn/q;

    return-void
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/ia$dq;->dq:Lcom/ss/android/downloadlib/mn/q;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/addownload/ia$dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    return-void
.end method

.method public onCanceled(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    const/4 v0, -0x4

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/addownload/ia$dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    return-void
.end method

.method public onFailed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .locals 0

    const/4 p2, -0x1

    invoke-direct {p0, p1, p2}, Lcom/ss/android/downloadlib/addownload/ia$dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    return-void
.end method

.method public onPause(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/addownload/ia$dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    return-void
.end method

.method public onPrepare(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/addownload/ia$dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    return-void
.end method

.method public onProgress(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/addownload/ia$dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    return-void
.end method

.method public onStart(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/addownload/ia$dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    return-void
.end method

.method public onSuccessed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    const/4 v0, -0x3

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/addownload/ia$dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    return-void
.end method

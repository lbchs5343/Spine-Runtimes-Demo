.class public Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;
.super Lcom/ss/android/socialbase/downloader/downloader/DownloadService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->onCreate()V

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(Landroid/content/Context;)V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->xz()Lcom/ss/android/socialbase/downloader/downloader/ox$dq;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/le;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/downloader/le;-><init>()V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(Lcom/ss/android/socialbase/downloader/downloader/ox$dq;)V

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->h()Lcom/ss/android/socialbase/downloader/downloader/jy;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->dq:Lcom/ss/android/socialbase/downloader/downloader/jy;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/jy;->dq(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

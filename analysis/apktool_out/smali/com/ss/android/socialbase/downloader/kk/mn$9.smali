.class final Lcom/ss/android/socialbase/downloader/kk/mn$9;
.super Lcom/ss/android/socialbase/downloader/depend/ig$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/mp;)Lcom/ss/android/socialbase/downloader/depend/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/downloader/depend/mp;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/depend/mp;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/kk/mn$9;->dq:Lcom/ss/android/socialbase/downloader/depend/mp;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/ig$dq;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$9;->dq:Lcom/ss/android/socialbase/downloader/depend/mp;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/mp;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    return p1
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$9;->dq:Lcom/ss/android/socialbase/downloader/depend/mp;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/mp;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_0
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

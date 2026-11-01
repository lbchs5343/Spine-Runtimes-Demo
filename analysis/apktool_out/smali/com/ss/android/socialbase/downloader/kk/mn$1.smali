.class final Lcom/ss/android/socialbase/downloader/kk/mn$1;
.super Lcom/ss/android/socialbase/downloader/model/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)Lcom/ss/android/socialbase/downloader/model/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/downloader/model/DownloadTask;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/kk/mn$1;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/dq$dq;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)Lcom/ss/android/socialbase/downloader/depend/kk;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$1;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->s(I)Lcom/ss/android/socialbase/downloader/constants/iw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getSingleDownloadListener(Lcom/ss/android/socialbase/downloader/constants/iw;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/iw;->d:Lcom/ss/android/socialbase/downloader/constants/iw;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)Lcom/ss/android/socialbase/downloader/depend/kk;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/ss/android/socialbase/downloader/depend/s;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$1;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getChunkStrategy()Lcom/ss/android/socialbase/downloader/downloader/ia;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/downloader/ia;)Lcom/ss/android/socialbase/downloader/depend/s;

    move-result-object v0

    return-object v0
.end method

.method public dq(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$1;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->s(I)Lcom/ss/android/socialbase/downloader/constants/iw;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadListenerSize(Lcom/ss/android/socialbase/downloader/constants/iw;)I

    move-result p1

    return p1
.end method

.method public dq(II)Lcom/ss/android/socialbase/downloader/depend/kk;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$1;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->s(I)Lcom/ss/android/socialbase/downloader/constants/iw;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadListenerByIndex(Lcom/ss/android/socialbase/downloader/constants/iw;I)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object p2

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/iw;->d:Lcom/ss/android/socialbase/downloader/constants/iw;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {p2, p1}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)Lcom/ss/android/socialbase/downloader/depend/kk;

    move-result-object p1

    return-object p1
.end method

.method public dq()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$1;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public ia()Lcom/ss/android/socialbase/downloader/depend/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$1;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getRetryDelayTimeCalculator()Lcom/ss/android/socialbase/downloader/downloader/gh;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/downloader/gh;)Lcom/ss/android/socialbase/downloader/depend/u;

    move-result-object v0

    return-object v0
.end method

.method public ig()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$1;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadCompleteHandlers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public iw()Lcom/ss/android/socialbase/downloader/depend/iw;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$1;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDepend()Lcom/ss/android/socialbase/downloader/depend/q;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/q;)Lcom/ss/android/socialbase/downloader/depend/iw;

    move-result-object v0

    return-object v0
.end method

.method public kk()Lcom/ss/android/socialbase/downloader/depend/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$1;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDiskSpaceHandler()Lcom/ss/android/socialbase/downloader/depend/cd;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/cd;)Lcom/ss/android/socialbase/downloader/depend/f;

    move-result-object v0

    return-object v0
.end method

.method public mn()Lcom/ss/android/socialbase/downloader/depend/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$1;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getForbiddenHandler()Lcom/ss/android/socialbase/downloader/depend/k;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/k;)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v0

    return-object v0
.end method

.method public no()Lcom/ss/android/socialbase/downloader/depend/mn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$1;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getFileUriProvider()Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;)Lcom/ss/android/socialbase/downloader/depend/mn;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/ss/android/socialbase/downloader/depend/o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$1;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/wp;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/wp;)Lcom/ss/android/socialbase/downloader/depend/o;

    move-result-object v0

    return-object v0
.end method

.method public ox()Lcom/ss/android/socialbase/downloader/depend/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$1;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationEventListener()Lcom/ss/android/socialbase/downloader/depend/kx;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/kx;)Lcom/ss/android/socialbase/downloader/depend/e;

    move-result-object v0

    return-object v0
.end method

.method public ox(I)Lcom/ss/android/socialbase/downloader/depend/ig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$1;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadCompleteHandlerByIndex(I)Lcom/ss/android/socialbase/downloader/depend/mp;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/mp;)Lcom/ss/android/socialbase/downloader/depend/ig;

    move-result-object p1

    return-object p1
.end method

.method public p()Lcom/ss/android/socialbase/downloader/depend/n;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$1;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationClickCallback()Lcom/ss/android/socialbase/downloader/depend/op;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/op;)Lcom/ss/android/socialbase/downloader/depend/n;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/ss/android/socialbase/downloader/depend/ia;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$1;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getInterceptor()Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;)Lcom/ss/android/socialbase/downloader/depend/ia;

    move-result-object v0

    return-object v0
.end method

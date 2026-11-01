.class final Lcom/ss/android/socialbase/downloader/kk/mn$23;
.super Lcom/ss/android/socialbase/downloader/depend/e$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/kx;)Lcom/ss/android/socialbase/downloader/depend/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/downloader/depend/kx;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/depend/kx;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/kk/mn$23;->dq:Lcom/ss/android/socialbase/downloader/depend/kx;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/e$dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$23;->dq:Lcom/ss/android/socialbase/downloader/depend/kx;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/kx;->dq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dq(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$23;->dq:Lcom/ss/android/socialbase/downloader/depend/kx;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/depend/kx;->dq(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$23;->dq:Lcom/ss/android/socialbase/downloader/depend/kx;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/kx;->dq(Z)Z

    move-result p1

    return p1
.end method

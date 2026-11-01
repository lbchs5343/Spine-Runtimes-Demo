.class final Lcom/ss/android/socialbase/downloader/kk/mn$3;
.super Lcom/ss/android/socialbase/downloader/depend/iw$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/q;)Lcom/ss/android/socialbase/downloader/depend/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/downloader/depend/q;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/depend/q;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/kk/mn$3;->dq:Lcom/ss/android/socialbase/downloader/depend/q;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/iw$dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$3;->dq:Lcom/ss/android/socialbase/downloader/depend/q;

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/depend/q;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    return-void
.end method

.class Lcom/ss/android/downloadlib/addownload/s$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/p/ia;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/s;->iw(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:I

.field final synthetic ox:Lcom/ss/android/downloadad/api/dq/d;

.field final synthetic p:I

.field final synthetic s:Lcom/ss/android/downloadlib/addownload/s;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/s;IZLcom/ss/android/downloadad/api/dq/d;I)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$7;->s:Lcom/ss/android/downloadlib/addownload/s;

    iput p2, p0, Lcom/ss/android/downloadlib/addownload/s$7;->dq:I

    iput-boolean p3, p0, Lcom/ss/android/downloadlib/addownload/s$7;->d:Z

    iput-object p4, p0, Lcom/ss/android/downloadlib/addownload/s$7;->ox:Lcom/ss/android/downloadad/api/dq/d;

    iput p5, p0, Lcom/ss/android/downloadlib/addownload/s$7;->p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/ss/android/downloadad/api/dq/d;)V
    .locals 3

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$7;->s:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/s;->mn(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p1

    const-string v0, "fix_handle_pause"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$7;->s:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadlib/addownload/s$7;->dq:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/downloadlib/addownload/s;->dq(Lcom/ss/android/downloadlib/addownload/s;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    :cond_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$7;->s:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/s;->d(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/downloadlib/addownload/ia;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s$7;->s:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/s;->mn(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/downloadlib/addownload/s$7;->d:Z

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$7;->s:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/s;->mn(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$7;->s:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/s;->mn(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$7;->s:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/s;->mn(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->stopPauseReserveOnWifi()V

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p1

    const-string v0, "pause_reserve_wifi_cancel_on_wifi"

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/s$7;->ox:Lcom/ss/android/downloadad/api/dq/d;

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/downloadlib/p/dq;->d(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$7;->s:Lcom/ss/android/downloadlib/addownload/s;

    iget v0, p0, Lcom/ss/android/downloadlib/addownload/s$7;->dq:I

    iget v1, p0, Lcom/ss/android/downloadlib/addownload/s$7;->p:I

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/s;->mn(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/s;->dq(Lcom/ss/android/downloadlib/addownload/s;IILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void
.end method

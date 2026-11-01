.class final Lcom/ss/android/downloadlib/addownload/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/dq/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/q;->dq(Lcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/downloadlib/addownload/p/ia;ZLcom/ss/android/downloadlib/addownload/dq/ox;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:I

.field final synthetic ox:Lcom/ss/android/downloadad/api/dq/d;

.field final synthetic p:Lcom/ss/android/downloadlib/addownload/p/ia;


# direct methods
.method public constructor <init>(IZLcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/addownload/p/ia;)V
    .locals 0

    iput p1, p0, Lcom/ss/android/downloadlib/addownload/q$1;->dq:I

    iput-boolean p2, p0, Lcom/ss/android/downloadlib/addownload/q$1;->d:Z

    iput-object p3, p0, Lcom/ss/android/downloadlib/addownload/q$1;->ox:Lcom/ss/android/downloadad/api/dq/d;

    iput-object p4, p0, Lcom/ss/android/downloadlib/addownload/q$1;->p:Lcom/ss/android/downloadlib/addownload/p/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/q;->dq(Lcom/ss/android/downloadlib/addownload/dq/p;)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadlib/addownload/q$1;->dq:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->stopPauseReserveOnWifi()V

    :cond_0
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/q$1;->d:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    const-string v1, "cancel_pause_reserve_wifi_cancel"

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/q$1;->ox:Lcom/ss/android/downloadad/api/dq/d;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    const-string v1, "pause_reserve_wifi_cancel"

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/q$1;->ox:Lcom/ss/android/downloadad/api/dq/d;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/p/dq;->d(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)V

    :goto_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/q$1;->p:Lcom/ss/android/downloadlib/addownload/p/ia;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/q$1;->ox:Lcom/ss/android/downloadad/api/dq/d;

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/addownload/p/ia;->dq(Lcom/ss/android/downloadad/api/dq/d;)V

    return-void
.end method

.method public dq()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/q;->dq(Lcom/ss/android/downloadlib/addownload/dq/p;)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadlib/addownload/q$1;->dq:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->startPauseReserveOnWifi()V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/cd;->dq()Lcom/ss/android/socialbase/downloader/impls/cd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/impls/cd;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    iget-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/q$1;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    const-string v1, "cancel_pause_reserve_wifi_confirm"

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/q$1;->ox:Lcom/ss/android/downloadad/api/dq/d;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    const-string v1, "pause_reserve_wifi_confirm"

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/q$1;->ox:Lcom/ss/android/downloadad/api/dq/d;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/p/dq;->d(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/q$1;->p:Lcom/ss/android/downloadlib/addownload/p/ia;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/q$1;->ox:Lcom/ss/android/downloadad/api/dq/d;

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/addownload/p/ia;->dq(Lcom/ss/android/downloadad/api/dq/d;)V

    return-void
.end method

.class public Lcom/ss/android/downloadlib/ox/iw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/ox/p;


# instance fields
.field private dq:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/downloadlib/ox/iw;->dq:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dq(IILjava/lang/String;IJ)V
    .locals 10

    iget-object p3, p0, Lcom/ss/android/downloadlib/ox/iw;->dq:Landroid/content/Context;

    if-nez p3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {p3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/api/dq/d;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x1

    if-eq p2, p3, :cond_7

    const/4 p3, 0x3

    const-string v0, "download_notification"

    if-eq p2, p3, :cond_6

    const/4 p3, 0x5

    if-eq p2, p3, :cond_5

    const/4 p3, 0x6

    if-eq p2, p3, :cond_4

    const/4 p3, 0x7

    if-eq p2, p3, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p2

    const-string p3, "download_notification_click"

    invoke-virtual {p2, v0, p3, p1}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void

    :cond_4
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p2

    const-string p3, "download_notification_continue"

    invoke-virtual {p2, v0, p3, p1}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void

    :cond_5
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p2

    const-string p3, "download_notification_pause"

    invoke-virtual {p2, v0, p3, p1}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void

    :cond_6
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p2, v1}, Lcom/ss/android/downloadlib/dq;->d(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p3

    const-string v1, "download_notification_install"

    invoke-virtual {p3, v0, v1, p2, p1}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void

    :cond_7
    invoke-static {v1, p1}, Lcom/ss/android/downloadlib/dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/api/dq/d;)V

    const-string p2, "application/vnd.android.package-archive"

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/dq;->dq()Lcom/ss/android/downloadlib/addownload/dq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->d()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->ig()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->s()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->p()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/ss/android/downloadlib/addownload/dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public dq(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/ss/android/downloadlib/ox/iw;->dq:Landroid/content/Context;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p2

    const/4 p3, -0x3

    if-eq p2, p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setPackageName(Ljava/lang/String;)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d;->dq()Lcom/ss/android/downloadlib/addownload/d;

    move-result-object p2

    iget-object p3, p0, Lcom/ss/android/downloadlib/ox/iw;->dq:Landroid/content/Context;

    invoke-virtual {p2, p3, p1}, Lcom/ss/android/downloadlib/addownload/d;->dq(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dq(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/ss/android/downloadlib/dq;->dq()Lcom/ss/android/downloadlib/dq;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/downloadlib/dq;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/ia;->dq()Lcom/ss/android/downloadlib/ia;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/ia;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "report_download_cancel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v0

    const-string v1, ""

    const/16 v3, 0x3f4

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-direct {v2, v3, v1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lcom/ss/android/downloadlib/p/dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-direct {v2, v3, v1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lcom/ss/android/downloadlib/p/dq;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    return-void
.end method

.method public dq()Z
    .locals 1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d;->dq()Lcom/ss/android/downloadlib/addownload/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/d;->d()Z

    move-result v0

    return v0
.end method

.method public dq(IZ)Z
    .locals 0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->jy()Lcom/ss/android/download/api/config/p;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->jy()Lcom/ss/android/download/api/config/p;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/ss/android/download/api/config/p;->dq(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.class public Lcom/ss/android/downloadlib/ox/ia;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/ox/ia$dq;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/android/downloadlib/ox/ia$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/downloadlib/ox/ia;-><init>()V

    return-void
.end method

.method private d(Lcom/ss/android/downloadad/api/dq/d;J)V
    .locals 5

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->gh()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v1

    const-string v2, "notification_opt_2"

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/ox/ia;->dq(I)V

    invoke-static {}, Lcom/ss/android/downloadlib/s;->dq()Lcom/ss/android/downloadlib/s;

    move-result-object v1

    new-instance v2, Lcom/ss/android/downloadlib/ox/ia$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/ss/android/downloadlib/ox/ia$1;-><init>(Lcom/ss/android/downloadlib/ox/ia;ILcom/ss/android/downloadad/api/dq/d;)V

    const-wide/16 v3, 0x3e8

    mul-long p2, p2, v3

    invoke-virtual {v1, v2, p2, p3}, Lcom/ss/android/downloadlib/s;->dq(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static dq()Lcom/ss/android/downloadlib/ox/ia;
    .locals 1

    invoke-static {}, Lcom/ss/android/downloadlib/ox/ia$dq;->dq()Lcom/ss/android/downloadlib/ox/ia;

    move-result-object v0

    return-object v0
.end method

.method private dq(ILcom/ss/android/downloadad/api/dq/d;Lorg/json/JSONObject;)V
    .locals 9

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s/p;->dq()Z

    move-result v0

    const-string v1, "error_code"

    if-nez v0, :cond_0

    const/16 p1, 0x3ec

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3, v1, p1}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 p1, 0x3ed

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3, v1, p1}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/d;->dq()Lcom/ss/android/socialbase/downloader/notification/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ss/android/socialbase/downloader/notification/d;->s(I)Lcom/ss/android/socialbase/downloader/notification/dq;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/d;->dq()Lcom/ss/android/socialbase/downloader/notification/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ss/android/socialbase/downloader/notification/d;->iw(I)V

    :cond_2
    new-instance v2, Lcom/ss/android/socialbase/appdownloader/s/dq;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object v8

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/ss/android/socialbase/appdownloader/s/dq;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/notification/dq;->dq(J)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/notification/dq;->d(J)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v0, v1, v1}, Lcom/ss/android/socialbase/downloader/notification/dq;->dq(ILcom/ss/android/socialbase/downloader/exception/BaseException;ZZ)V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/d;->dq()Lcom/ss/android/socialbase/downloader/notification/d;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/downloader/notification/d;->dq(Lcom/ss/android/socialbase/downloader/notification/dq;)V

    invoke-virtual {v2, v0, v1}, Lcom/ss/android/socialbase/appdownloader/s/dq;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p1

    const-string v0, "download_notification_show"

    invoke-virtual {p1, v0, p3, p2}, Lcom/ss/android/downloadlib/p/dq;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/ox/ia;ILcom/ss/android/downloadad/api/dq/d;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/downloadlib/ox/ia;->dq(ILcom/ss/android/downloadad/api/dq/d;Lorg/json/JSONObject;)V

    return-void
.end method

.method private ox(Lcom/ss/android/downloadad/api/dq/d;J)V
    .locals 5

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->gh()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v1

    const-string v2, "notification_opt_2"

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/ox/ia;->dq(I)V

    invoke-static {}, Lcom/ss/android/downloadlib/s;->dq()Lcom/ss/android/downloadlib/s;

    move-result-object v1

    new-instance v2, Lcom/ss/android/downloadlib/ox/ia$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/ss/android/downloadlib/ox/ia$2;-><init>(Lcom/ss/android/downloadlib/ox/ia;ILcom/ss/android/downloadad/api/dq/d;)V

    const-wide/16 v3, 0x3e8

    mul-long p2, p2, v3

    invoke-virtual {v1, v2, p2, p3}, Lcom/ss/android/downloadlib/s;->dq(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public d(Lcom/ss/android/downloadad/api/dq/d;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->gh()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "noti_continue_delay_secs"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/ox/ia;->d(Lcom/ss/android/downloadad/api/dq/d;J)V

    return-void
.end method

.method public dq(I)V
    .locals 2

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s/ox;->dq()Lcom/ss/android/socialbase/appdownloader/s/ox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/appdownloader/s/ox;->dq(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s/ox;->dq()Lcom/ss/android/socialbase/appdownloader/s/ox;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/ss/android/socialbase/appdownloader/s/ox;->dq(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/ss/android/downloadad/api/dq/d;)V
    .locals 2

    const-wide/16 v0, 0x5

    invoke-direct {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/ox/ia;->d(Lcom/ss/android/downloadad/api/dq/d;J)V

    return-void
.end method

.method public dq(Lcom/ss/android/downloadad/api/dq/d;J)V
    .locals 5

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->gh()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v1

    const-string v2, "notification_opt_2"

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/ox/ia;->dq(I)V

    invoke-static {}, Lcom/ss/android/downloadlib/s;->dq()Lcom/ss/android/downloadlib/s;

    move-result-object v1

    new-instance v2, Lcom/ss/android/downloadlib/ox/ia$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/ss/android/downloadlib/ox/ia$3;-><init>(Lcom/ss/android/downloadlib/ox/ia;ILcom/ss/android/downloadad/api/dq/d;)V

    const-wide/16 v3, 0x3e8

    mul-long p2, p2, v3

    invoke-virtual {v1, v2, p2, p3}, Lcom/ss/android/downloadlib/s;->dq(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public iw(Lcom/ss/android/downloadad/api/dq/d;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->gh()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "noti_open_delay_secs"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/ox/ia;->dq(Lcom/ss/android/downloadad/api/dq/d;J)V

    return-void
.end method

.method public ox(Lcom/ss/android/downloadad/api/dq/d;)V
    .locals 2

    const-wide/16 v0, 0x5

    invoke-direct {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/ox/ia;->ox(Lcom/ss/android/downloadad/api/dq/d;J)V

    return-void
.end method

.method public p(Lcom/ss/android/downloadad/api/dq/d;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->gh()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "noti_install_delay_secs"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/ox/ia;->ox(Lcom/ss/android/downloadad/api/dq/d;J)V

    return-void
.end method

.method public s(Lcom/ss/android/downloadad/api/dq/d;)V
    .locals 2

    const-wide/16 v0, 0x5

    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/ox/ia;->dq(Lcom/ss/android/downloadad/api/dq/d;J)V

    return-void
.end method

.class public Lcom/ss/android/downloadlib/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/ox/ia;


# static fields
.field private static dq:Ljava/lang/String; = "ox"


# instance fields
.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/ox;->d:Landroid/os/Handler;

    return-void
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/mn/s;->iw(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/s;->dq()Lcom/ss/android/downloadlib/s;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/addownload/ox/d;

    invoke-direct {v1, p1}, Lcom/ss/android/downloadlib/addownload/ox/d;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/s;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/api/dq/d;)V
    .locals 14

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/mn/mp;->dq(Ljava/io/File;J)J

    move-result-wide v6

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/mn/mp;->dq(Ljava/io/File;)J

    move-result-wide v3

    const-wide/16 v8, 0xa

    div-long/2addr v3, v8

    const-wide/32 v8, 0x1f400000

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v8

    long-to-double v3, v3

    long-to-double v10, v8

    const-wide/high16 v12, 0x4004000000000000L    # 2.5

    mul-double v10, v10, v12

    add-double/2addr v10, v3

    cmp-long v0, v6, v1

    if-lez v0, :cond_0

    cmp-long v0, v8, v1

    if-lez v0, :cond_0

    long-to-double v0, v6

    cmpg-double v2, v0, v10

    if-gez v2, :cond_0

    sub-double v0, v10, v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/p;->d()J

    move-result-wide v2

    long-to-double v2, v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/p;->dq(I)V

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/dq/dq;

    move-result-object v0

    new-instance v3, Lcom/ss/android/downloadlib/ox$3;

    move-object v4, p0

    move-object v12, p1

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v12}, Lcom/ss/android/downloadlib/ox$3;-><init>(Lcom/ss/android/downloadlib/ox;Lcom/ss/android/downloadad/api/dq/d;JJDLcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq(Lcom/ss/android/socialbase/downloader/dq/dq$dq;)V

    return-void
.end method


# virtual methods
.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    .locals 5

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    if-eqz p2, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1, v1}, Lcom/ss/android/downloadlib/mn/iw;->ox(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lorg/json/JSONObject;)V

    invoke-static {v1, p1}, Lcom/ss/android/downloadlib/dq;->dq(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lorg/json/JSONObject;

    const-string v2, "download_failed"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ss/android/downloadlib/mn/no;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/api/dq/d;

    move-result-object v1

    if-nez v1, :cond_2

    goto/16 :goto_3

    :cond_2
    if-ne p3, v0, :cond_9

    if-eqz p2, :cond_8

    :try_start_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p3

    invoke-static {p3}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p3

    const-string v0, "toast_without_network"

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result p3

    const/16 v3, 0x419

    if-ne p3, v3, :cond_3

    iget-object p3, p0, Lcom/ss/android/downloadlib/ox;->d:Landroid/os/Handler;

    new-instance v3, Lcom/ss/android/downloadlib/ox$1;

    invoke-direct {v3, p0}, Lcom/ss/android/downloadlib/ox$1;-><init>(Lcom/ss/android/downloadlib/ox;)V

    invoke-virtual {p3, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_3
    :goto_0
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/kk/iw;->ia(Ljava/lang/Throwable;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->mp()Lcom/ss/android/download/api/config/q;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->mp()Lcom/ss/android/download/api/config/q;

    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/dq/d;->d()J

    :cond_4
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p3

    const-string v3, "download_failed_for_space"

    invoke-virtual {p3, v3, v1}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)V

    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/dq/d;->t()Z

    move-result p3

    if-nez p3, :cond_5

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p3

    const-string v3, "download_can_restart"

    invoke-virtual {p3, v3, v1}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)V

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/ox;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    :cond_5
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->mp()Lcom/ss/android/download/api/config/q;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->mp()Lcom/ss/android/download/api/config/q;

    move-result-object p3

    invoke-interface {p3}, Lcom/ss/android/download/api/config/q;->ox()Z

    move-result p3

    if-nez p3, :cond_7

    :cond_6
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object p3

    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/dq/d;->d()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(J)Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-interface {p3}, Lcom/ss/android/download/api/download/DownloadModel;->isShowToast()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v1

    const-string v3, "show_no_enough_space_toast"

    invoke-virtual {v1, v3, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_7

    iget-object v0, p0, Lcom/ss/android/downloadlib/ox;->d:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/downloadlib/ox$2;

    invoke-direct {v2, p0, v1, p3}, Lcom/ss/android/downloadlib/ox$2;-><init>(Lcom/ss/android/downloadlib/ox;Lcom/ss/android/socialbase/downloader/mn/dq;Lcom/ss/android/download/api/download/DownloadModel;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "exception_msg_length"

    const/16 v1, 0x1f4

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/ss/android/downloadlib/mn/mp;->dq(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v1

    invoke-direct {v0, v1, p3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p3

    invoke-virtual {p3, p1, v0}, Lcom/ss/android/downloadlib/p/dq;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    invoke-static {}, Lcom/ss/android/downloadlib/ia;->dq()Lcom/ss/android/downloadlib/ia;

    move-result-object p3

    const-string v0, ""

    invoke-virtual {p3, p1, p2, v0}, Lcom/ss/android/downloadlib/ia;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;Ljava/lang/String;)V

    return-void

    :cond_9
    const/4 p2, -0x3

    if-ne p3, p2, :cond_a

    invoke-static {p1, v1}, Lcom/ss/android/downloadlib/dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/api/dq/d;)V

    return-void

    :cond_a
    const/16 p2, 0x7d1

    if-ne p3, p2, :cond_b

    invoke-static {}, Lcom/ss/android/downloadlib/dq;->dq()Lcom/ss/android/downloadlib/dq;

    move-result-object p3

    invoke-virtual {p3, p1, v1, p2}, Lcom/ss/android/downloadlib/dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/api/dq/d;I)V

    return-void

    :cond_b
    const/16 p2, 0xb

    if-ne p3, p2, :cond_c

    invoke-static {}, Lcom/ss/android/downloadlib/dq;->dq()Lcom/ss/android/downloadlib/dq;

    move-result-object p2

    const/16 p3, 0x7d0

    invoke-virtual {p2, p1, v1, p3}, Lcom/ss/android/downloadlib/dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/api/dq/d;I)V

    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/dq/d;->by()Z

    move-result p2

    if-nez p2, :cond_c

    invoke-direct {p0, p1, v1}, Lcom/ss/android/downloadlib/ox;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/api/dq/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->r()Lcom/ss/android/download/api/d/dq;

    move-result-object p2

    const-string p3, "onAppDownloadMonitorSend"

    invoke-interface {p2, p1, p3}, Lcom/ss/android/download/api/d/dq;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_c
    :goto_3
    return-void
.end method

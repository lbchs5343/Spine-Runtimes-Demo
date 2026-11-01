.class public Lcom/ss/android/downloadlib/addownload/ox/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/ox/d;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ox/d;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/ox/d;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/api/dq/d;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    const-string v2, "cleanspace_task"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ox/d;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/mn/s;->dq(I)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ox/d;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ox/d;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v4

    sub-long v10, v2, v4

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/ss/android/downloadlib/mn/mp;->d(J)J

    move-result-wide v4

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->mp()Lcom/ss/android/download/api/config/q;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->mp()Lcom/ss/android/download/api/config/q;

    :cond_2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/ox/ox;->dq()V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/ox/ox;->d()V

    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/dq/d;->gh()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/mn/s;->mn(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/ox/ox;->dq(Landroid/content/Context;)V

    :cond_3
    invoke-static {v2, v3}, Lcom/ss/android/downloadlib/mn/mp;->d(J)J

    move-result-wide v2

    cmp-long v0, v2, v10

    if-ltz v0, :cond_4

    const-string v0, "1"

    invoke-virtual {v1, v0}, Lcom/ss/android/downloadad/api/dq/d;->ig(Ljava/lang/String;)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/kk;->dq()Lcom/ss/android/downloadlib/addownload/d/kk;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/addownload/d/kk;->dq(Lcom/ss/android/downloadad/api/dq/d;)V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "quite_clean_size"

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    const-string v2, "cleanspace_download_after_quite_clean"

    invoke-virtual {v0, v2, v6, v1}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/ox/d;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->restart(I)V

    return-void

    :cond_4
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->mp()Lcom/ss/android/download/api/config/q;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/ss/android/downloadad/api/dq/d;->p(Z)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/ox/p;->dq()Lcom/ss/android/downloadlib/addownload/ox/p;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ss/android/downloadlib/addownload/ox/d$1;

    invoke-direct {v3, p0, v1}, Lcom/ss/android/downloadlib/addownload/ox/d$1;-><init>(Lcom/ss/android/downloadlib/addownload/ox/d;Lcom/ss/android/downloadad/api/dq/d;)V

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/downloadlib/addownload/ox/p;->dq(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/ox/s;)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->mp()Lcom/ss/android/download/api/config/q;

    move-result-object v6

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ox/d;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v7

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ox/d;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v11}, Lcom/ss/android/download/api/config/q;->dq(ILjava/lang/String;ZJ)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/ss/android/downloadad/api/dq/d;->s(Z)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v0, "show_dialog_result"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    const-string v3, "cleanspace_window_show"

    invoke-virtual {v0, v3, v2, v1}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void
.end method

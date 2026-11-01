.class public Lcom/ss/android/downloadlib/addownload/ox/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/cd;


# instance fields
.field private dq:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d(Lcom/ss/android/socialbase/downloader/mn/dq;)J
    .locals 5

    const-string v0, "clear_space_sleep_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-gtz p1, :cond_0

    return-wide v1

    :cond_0
    const-wide/16 v0, 0x1388

    cmp-long p1, v3, v0

    if-lez p1, :cond_1

    move-wide v3, v0

    :cond_1
    const-string p1, "waiting for space clear, sleepTime = "

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppDownloadDiskSpaceHandler"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/ss/android/downloadlib/mn/no;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-string p1, "waiting end!"

    invoke-static {v0, p1, v1}, Lcom/ss/android/downloadlib/mn/no;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-wide v3
.end method

.method private dq()V
    .locals 0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->f()Lcom/ss/android/download/api/config/s;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/ox/ox;->dq()V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/ox/ox;->d()V

    return-void
.end method

.method private dq(JJJJJ)V
    .locals 16

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    move-object/from16 v1, p0

    iget v2, v1, Lcom/ss/android/downloadlib/addownload/ox/dq;->dq:I

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    cmp-long v0, p3, p5

    if-lez v0, :cond_1

    const/4 v0, 0x1

    const/4 v15, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v15, 0x0

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/dq;->dq()Lcom/ss/android/downloadlib/dq;

    move-result-object v3

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    invoke-virtual/range {v3 .. v15}, Lcom/ss/android/downloadlib/dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;JJJJJZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/mn/dq;)Z
    .locals 9

    const-string v0, "clear_space_use_disk_handler"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "clear_space_min_time_interval"

    const-wide/32 v3, 0x927c0

    invoke-virtual {p1, v0, v3, v4}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/ox/p;->dq()Lcom/ss/android/downloadlib/addownload/ox/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/ox/p;->d()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-gez p1, :cond_1

    return v1

    :cond_1
    return v2
.end method


# virtual methods
.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/downloadlib/addownload/ox/dq;->dq:I

    return-void
.end method

.method public dq(JJLcom/ss/android/socialbase/downloader/depend/fw;)Z
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v5, p3

    iget v1, v0, Lcom/ss/android/downloadlib/addownload/ox/dq;->dq:I

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/addownload/ox/dq;->dq(Lcom/ss/android/socialbase/downloader/mn/dq;)Z

    move-result v2

    const/4 v11, 0x0

    if-nez v2, :cond_0

    return v11

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/ox/p;->dq()Lcom/ss/android/downloadlib/addownload/ox/p;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/downloadlib/addownload/ox/p;->ox()V

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Lcom/ss/android/downloadlib/mn/mp;->d(J)J

    move-result-wide v9

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/ox/dq;->dq()V

    invoke-static {v7, v8}, Lcom/ss/android/downloadlib/mn/mp;->d(J)J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v2

    cmp-long v2, v12, v5

    if-gez v2, :cond_2

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/addownload/ox/dq;->d(Lcom/ss/android/socialbase/downloader/mn/dq;)J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-lez v3, :cond_1

    invoke-static {v7, v8}, Lcom/ss/android/downloadlib/mn/mp;->d(J)J

    move-result-wide v12

    :cond_1
    move-wide v7, v1

    :cond_2
    move-wide v3, v12

    const-string v1, "cleanUpDisk, byteRequired = "

    const-string v2, ", byteAvailableAfter = "

    invoke-static {v5, v6, v1, v2}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", cleaned = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v12, v3, v9

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v12, "AppDownloadDiskSpaceHandler"

    invoke-static {v12, v1, v2}, Lcom/ss/android/downloadlib/mn/no;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    move-wide v1, v9

    move-wide v9, v7

    move-wide v7, v14

    invoke-direct/range {v0 .. v10}, Lcom/ss/android/downloadlib/addownload/ox/dq;->dq(JJJJJ)V

    cmp-long v0, v3, p3

    if-gez v0, :cond_3

    return v11

    :cond_3
    if-eqz p5, :cond_4

    invoke-interface/range {p5 .. p5}, Lcom/ss/android/socialbase/downloader/depend/fw;->dq()V

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

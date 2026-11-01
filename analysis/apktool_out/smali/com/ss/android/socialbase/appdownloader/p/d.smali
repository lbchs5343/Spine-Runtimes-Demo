.class public Lcom/ss/android/socialbase/appdownloader/p/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/ig;


# instance fields
.field private d:Landroid/content/BroadcastReceiver;

.field private dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/ss/android/socialbase/appdownloader/p/d;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/p/d;->d:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method private d(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ob()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-direct {p0, v0, v2, v1, p2}, Lcom/ss/android/socialbase/appdownloader/p/d;->dq(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZI)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/p/d;->dq:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/p/d;->d:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_3

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/p/d$2;

    invoke-direct {p1, p0}, Lcom/ss/android/socialbase/appdownloader/p/d$2;-><init>(Lcom/ss/android/socialbase/appdownloader/p/d;)V

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/p/d;->d:Landroid/content/BroadcastReceiver;

    :try_start_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ss/android/socialbase/appdownloader/p/d;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/p/d;->d:Landroid/content/BroadcastReceiver;

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/appdownloader/p/d;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/p/d;->d:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/appdownloader/p/d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/p/d;->dq:Ljava/util/List;

    return-object p0
.end method

.method private dq(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZI)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isShowNotification()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealStatus()I

    move-result v3

    const/4 v4, -0x5

    const-string v5, ", canShowNotification = "

    const-string v6, "LaunchResume"

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    const-wide/high16 v10, 0x4052000000000000L    # 72.0

    const/4 v14, 0x0

    if-ne v3, v4, :cond_c

    const-string v4, "application/ttpatch"

    const-wide v16, 0x414b774000000000L    # 3600000.0

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloaded()Z

    move-result v4

    if-nez v4, :cond_d

    :cond_1
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v3

    const-string v4, "failed_resume_max_count"

    invoke-virtual {v3, v4, v14}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v4

    const-string v12, "failed_resume_max_hours"

    invoke-virtual {v3, v12, v10, v11}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;D)D

    move-result-wide v10

    const-string v12, "failed_resume_min_hours"

    invoke-virtual {v3, v12, v8, v9}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getFailedResumeCount()I

    move-result v7

    if-ge v7, v4, :cond_2

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastDownloadTime()J

    move-result-wide v19

    sub-long v14, v12, v19

    long-to-double v14, v14

    mul-double v10, v10, v16

    cmpg-double v19, v14, v10

    if-gez v19, :cond_2

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastFailedResumeTime()J

    move-result-wide v10

    sub-long v10, v12, v10

    long-to-double v10, v10

    mul-double v8, v8, v16

    cmpl-double v14, v10, v8

    if-lez v14, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz p3, :cond_3

    const/4 v8, 0x1

    :cond_3
    if-eqz v8, :cond_b

    const-string v9, "failed_resume_need_wifi"

    const/4 v7, 0x1

    invoke-virtual {v3, v9, v7}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_4

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    const-string v10, "failed_resume_need_wait_wifi"

    const/4 v4, 0x0

    invoke-virtual {v3, v10, v4}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-nez p3, :cond_6

    if-eqz v9, :cond_6

    if-nez v3, :cond_7

    :cond_6
    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/p/d;->dq:Ljava/util/List;

    if-nez v2, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/ss/android/socialbase/appdownloader/p/d;->dq:Ljava/util/List;

    :cond_8
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/p/d;->dq:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/p/d;->dq:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setOnlyWifi(Z)V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/cd;->dq()Lcom/ss/android/socialbase/downloader/impls/cd;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ss/android/socialbase/downloader/impls/cd;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_4

    :goto_3
    invoke-static {v1, v7, v9}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZZ)V

    invoke-virtual {v1, v12, v13}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setLastFailedResumeTime(J)V

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getFailedResumeCount()I

    move-result v3

    add-int/2addr v3, v7

    invoke-virtual {v1, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFailedResumeCount(I)V

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateSpData()V

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz p3, :cond_a

    invoke-virtual {v1, v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setDownloadFromReserveWifi(Z)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/socialbase/appdownloader/p;->jy()Lcom/ss/android/socialbase/downloader/downloader/cd;

    move-result-object v3

    if-eqz v3, :cond_a

    const/4 v4, 0x5

    invoke-interface {v3, v1, v4, v2}, Lcom/ss/android/socialbase/downloader/downloader/cd;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;II)V

    :cond_a
    const/4 v14, 0x1

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v14, 0x0

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "launchResume, name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", downloadResumed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/p;->q()Lcom/ss/android/socialbase/appdownloader/ox/mn;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-interface {v2, v1, v14}, Lcom/ss/android/socialbase/appdownloader/ox/mn;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    return-void

    :cond_c
    const-wide v16, 0x414b774000000000L    # 3600000.0

    :cond_d
    const/4 v12, -0x3

    if-ne v3, v12, :cond_11

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/appdownloader/p/d;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto/16 :goto_8

    :cond_e
    const-string v3, "uninstall_resume_max_count"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v3

    const-string v12, "uninstall_resume_max_hours"

    invoke-virtual {v2, v12, v10, v11}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;D)D

    move-result-wide v10

    const-string v12, "uninstall_resume_min_hours"

    invoke-virtual {v2, v12, v8, v9}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUninstallResumeCount()I

    move-result v2

    if-ge v2, v3, :cond_f

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastDownloadTime()J

    move-result-wide v2

    sub-long v2, v12, v2

    long-to-double v2, v2

    mul-double v10, v10, v16

    cmpg-double v14, v2, v10

    if-gez v14, :cond_f

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastUninstallResumeTime()J

    move-result-wide v2

    sub-long v2, v12, v2

    long-to-double v2, v2

    mul-double v8, v8, v16

    cmpl-double v10, v2, v8

    if-lez v10, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "uninstallResume, name = "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_17

    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/d;->dq()Lcom/ss/android/socialbase/downloader/notification/d;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/notification/d;->s(I)Lcom/ss/android/socialbase/downloader/notification/dq;

    move-result-object v2

    if-nez v2, :cond_10

    new-instance v14, Lcom/ss/android/socialbase/appdownloader/s/dq;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v16

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v15, p1

    invoke-direct/range {v14 .. v20}, Lcom/ss/android/socialbase/appdownloader/s/dq;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/d;->dq()Lcom/ss/android/socialbase/downloader/notification/d;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/ss/android/socialbase/downloader/notification/d;->dq(Lcom/ss/android/socialbase/downloader/notification/dq;)V

    move-object v2, v14

    goto :goto_7

    :cond_10
    invoke-virtual {v2, v1}, Lcom/ss/android/socialbase/downloader/notification/dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    :goto_7
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/ss/android/socialbase/downloader/notification/dq;->d(J)V

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/ss/android/socialbase/downloader/notification/dq;->dq(J)V

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v3

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4, v4}, Lcom/ss/android/socialbase/downloader/notification/dq;->dq(ILcom/ss/android/socialbase/downloader/exception/BaseException;ZZ)V

    invoke-virtual {v1, v12, v13}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setLastUninstallResumeTime(J)V

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUninstallResumeCount()I

    move-result v2

    const/4 v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setUninstallResumeCount(I)V

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateSpData()V

    return-void

    :cond_11
    const/4 v4, -0x2

    if-ne v3, v4, :cond_17

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v3

    if-eqz v3, :cond_16

    if-eqz p3, :cond_13

    const/4 v7, 0x1

    invoke-static {v1, v7, v7}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZZ)V

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateSpData()V

    invoke-virtual {v1, v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setDownloadFromReserveWifi(Z)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/socialbase/appdownloader/p;->q()Lcom/ss/android/socialbase/appdownloader/ox/mn;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-interface {v3, v1, v7}, Lcom/ss/android/socialbase/appdownloader/ox/mn;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    :cond_12
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/socialbase/appdownloader/p;->jy()Lcom/ss/android/socialbase/downloader/downloader/cd;

    move-result-object v3

    if-eqz v3, :cond_17

    const/4 v4, 0x5

    invoke-interface {v3, v1, v4, v2}, Lcom/ss/android/socialbase/downloader/downloader/cd;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;II)V

    return-void

    :cond_13
    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/p/d;->dq:Ljava/util/List;

    if-nez v2, :cond_14

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/ss/android/socialbase/appdownloader/p/d;->dq:Ljava/util/List;

    :cond_14
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/p/d;->dq:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/p/d;->dq:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/cd;->dq()Lcom/ss/android/socialbase/downloader/impls/cd;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ss/android/socialbase/downloader/impls/cd;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    :cond_16
    move-object/from16 v15, p1

    invoke-direct {v0, v1, v15}, Lcom/ss/android/socialbase/appdownloader/p/d;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/content/Context;)V

    :cond_17
    :goto_8
    return-void
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/appdownloader/p/d;Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/appdownloader/p/d;->dq(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZI)V

    return-void
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/appdownloader/p/d;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/p/d;->d(Ljava/util/List;I)V

    return-void
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/content/Context;)V
    .locals 10

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "paused_resume_max_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "paused_resume_max_hours"

    const-wide/high16 v4, 0x4052000000000000L    # 72.0

    invoke-virtual {v0, v3, v4, v5}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPausedResumeCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastDownloadTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-double v5, v5

    const-wide v7, 0x414b774000000000L    # 3600000.0

    mul-double v3, v3, v7

    cmpg-double v1, v5, v3

    if-gez v1, :cond_1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/d;->dq()Lcom/ss/android/socialbase/downloader/notification/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ss/android/socialbase/downloader/notification/d;->s(I)Lcom/ss/android/socialbase/downloader/notification/dq;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v3, Lcom/ss/android/socialbase/appdownloader/s/dq;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v5

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object v9

    move-object v4, p2

    invoke-direct/range {v3 .. v9}, Lcom/ss/android/socialbase/appdownloader/s/dq;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/d;->dq()Lcom/ss/android/socialbase/downloader/notification/d;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/ss/android/socialbase/downloader/notification/d;->dq(Lcom/ss/android/socialbase/downloader/notification/dq;)V

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/ss/android/socialbase/downloader/notification/dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    :goto_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/ss/android/socialbase/downloader/notification/dq;->d(J)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/ss/android/socialbase/downloader/notification/dq;->dq(J)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p2

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v2, v2}, Lcom/ss/android/socialbase/downloader/notification/dq;->dq(ILcom/ss/android/socialbase/downloader/exception/BaseException;ZZ)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setPausedResumeCount(I)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateSpData()V

    :cond_1
    return-void
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "uninstall_can_not_resume_for_force_task"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZLjava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloaded()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public dq()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/ox;->ox()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public dq(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/ss/android/socialbase/downloader/kk/iw;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ig()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/appdownloader/p/d$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/p/d$1;-><init>(Lcom/ss/android/socialbase/appdownloader/p/d;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/p/d;->d(Ljava/util/List;I)V

    return-void
.end method

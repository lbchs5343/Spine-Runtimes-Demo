.class public Lcom/ss/android/socialbase/appdownloader/s/dq;
.super Lcom/ss/android/socialbase/downloader/notification/dq;


# instance fields
.field private final d:Landroid/content/Context;

.field private iw:Ljava/lang/String;

.field private final ox:Landroid/content/res/Resources;

.field private p:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/dq;-><init>(ILjava/lang/String;)V

    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/s/dq;->s:Ljava/lang/String;

    iput-object p5, p0, Lcom/ss/android/socialbase/appdownloader/s/dq;->p:Ljava/lang/String;

    iput-object p6, p0, Lcom/ss/android/socialbase/appdownloader/s/dq;->iw:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/s/dq;->ox:Landroid/content/res/Resources;

    return-void
.end method

.method private d(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)Landroid/app/Notification;
    .locals 24

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/notification/dq;->s()I

    move-result v2

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-direct {v0}, Lcom/ss/android/socialbase/appdownloader/s/dq;->o()Lg/zc;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/notification/dq;->iw()J

    move-result-wide v5

    iget-object v7, v4, Lg/zc;->s:Landroid/app/Notification;

    iput-wide v5, v7, Landroid/app/Notification;->when:J

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/notification/dq;->dq()I

    move-result v5

    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v6

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x18

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lt v8, v9, :cond_1

    const-string v8, "set_notification_group"

    invoke-virtual {v6, v8, v11}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v10, :cond_1

    const-string v8, "com.ss.android.socialbase.APP_DOWNLOADER"

    iput-object v8, v4, Lg/zc;->f:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->k()I

    move-result v8

    if-eqz v8, :cond_2

    iput v8, v7, Landroid/app/Notification;->icon:I

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    :goto_0
    new-instance v9, Lg/fbh;

    invoke-direct {v9, v10, v11}, Lg/bgf;-><init>(IZ)V

    invoke-virtual {v4, v9}, Lg/zc;->x(Lg/bgf;)V

    invoke-direct {v0, v3, v5}, Lcom/ss/android/socialbase/appdownloader/s/dq;->dq(II)I

    move-result v9

    if-eqz v8, :cond_3

    if-eqz v9, :cond_3

    iput v9, v7, Landroid/app/Notification;->icon:I

    :cond_3
    const/16 v8, 0x10

    const-string v12, "android.ss.intent.action.DOWNLOAD_CLICK_CONTENT"

    const/4 v15, 0x3

    const/4 v11, 0x4

    const/4 v13, -0x1

    const/4 v14, 0x2

    if-eq v3, v10, :cond_8

    if-eq v3, v11, :cond_8

    if-ne v3, v14, :cond_4

    goto :goto_2

    :cond_4
    if-ne v3, v15, :cond_9

    invoke-virtual {v4, v8, v10}, Lg/zc;->u(IZ)V

    if-eq v2, v13, :cond_7

    const/4 v15, -0x4

    if-ne v2, v15, :cond_5

    goto :goto_1

    :cond_5
    const/4 v15, -0x3

    if-ne v2, v15, :cond_6

    const-string v2, "notification_click_install_auto_cancel"

    invoke-virtual {v6, v2, v10}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v4, v8, v2}, Lg/zc;->u(IZ)V

    :cond_6
    const-string v12, "android.ss.intent.action.DOWNLOAD_OPEN"

    :cond_7
    :goto_1
    invoke-direct {v0, v12, v3, v5}, Lcom/ss/android/socialbase/appdownloader/s/dq;->dq(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v4, Lg/zc;->r:Landroid/app/PendingIntent;

    const-string v2, "android.ss.intent.action.DOWNLOAD_HIDE"

    invoke-direct {v0, v2, v3, v5}, Lcom/ss/android/socialbase/appdownloader/s/dq;->dq(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v7, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    goto :goto_3

    :cond_8
    :goto_2
    invoke-direct {v0, v12, v3, v5}, Lcom/ss/android/socialbase/appdownloader/s/dq;->dq(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v4, Lg/zc;->r:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    invoke-virtual {v4, v8, v2}, Lg/zc;->u(IZ)V

    :cond_9
    :goto_3
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/notification/dq;->d()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/notification/dq;->ox()J

    move-result-wide v14

    const-wide/16 v19, 0x0

    cmp-long v12, v14, v19

    if-lez v12, :cond_a

    const-wide/16 v19, 0x64

    mul-long v19, v19, v7

    div-long v11, v19, v14

    long-to-int v12, v11

    goto :goto_4

    :cond_a
    const/4 v12, 0x0

    :goto_4
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/notification/dq;->p()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_b

    const-string v11, "tt_appdownloader_download_unknown_title"

    invoke-static {v11}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v11

    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/s/dq;->ox:Landroid/content/res/Resources;

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_b
    invoke-direct {v0}, Lcom/ss/android/socialbase/appdownloader/s/dq;->kk()Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->no()I

    move-result v13

    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v10

    const-string v1, "notification_opt_2"

    invoke-virtual {v10, v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v21, v4

    const/4 v4, 0x1

    if-eq v10, v4, :cond_c

    const-string v4, "android.ss.intent.action.DOWNLOAD_CLICK_BTN"

    invoke-direct {v0, v4, v3, v5}, Lcom/ss/android/socialbase/appdownloader/s/dq;->dq(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v13, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_c
    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v4

    const-string v10, "enable_notification_ui"

    invoke-virtual {v4, v10}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result v4

    move/from16 v22, v4

    const-string v4, "setBackgroundResource"

    if-lez v22, :cond_d

    move-wide/from16 v22, v14

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->gh()I

    move-result v14

    invoke-virtual {v2, v13, v4, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const/4 v14, -0x1

    invoke-virtual {v2, v13, v14}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_5

    :cond_d
    move-wide/from16 v22, v14

    :goto_5
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->mp()I

    move-result v13

    invoke-virtual {v2, v13, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/appdownloader/s/dq;->dq(I)I

    move-result v11

    const/4 v13, 0x0

    invoke-virtual {v2, v11, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/16 v13, 0x64

    move/from16 v14, p2

    invoke-virtual {v2, v11, v13, v12, v14}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->ig()I

    move-result v11

    if-eqz v9, :cond_e

    invoke-virtual {v2, v11, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_e
    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_10

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s/ox;->dq()Lcom/ss/android/socialbase/appdownloader/s/ox;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/ss/android/socialbase/appdownloader/s/ox;->dq(I)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_f

    const-string v4, "setBackgroundColor"

    const/4 v13, 0x0

    invoke-virtual {v2, v11, v4, v13}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-virtual {v2, v11, v9}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_6

    :cond_f
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->gh()I

    move-result v9

    invoke-virtual {v2, v11, v4, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_10
    :goto_6
    const-string v4, "/"

    const/16 v9, 0x8

    const/4 v11, 0x1

    if-eq v3, v11, :cond_11

    const/4 v11, 0x4

    if-ne v3, v11, :cond_12

    :cond_11
    move-object v13, v2

    move-wide/from16 v14, v22

    goto/16 :goto_13

    :cond_12
    const-string v11, "tt_appdownloader_notification_download_resume"

    const/4 v13, 0x2

    if-ne v3, v13, :cond_16

    move-object v13, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v8}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v23}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v14, "tt_appdownloader_notification_pausing"

    invoke-static {v14}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v14

    iget-object v15, v0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v11}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v11

    iget-object v15, v0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result v1

    const/4 v15, 0x1

    if-ne v1, v15, :cond_14

    const-string v1, "noti_progress_show_th"

    const/16 v15, 0x46

    invoke-virtual {v6, v1, v15}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v1

    if-lt v12, v1, :cond_13

    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/appdownloader/s/dq;->dq(I)I

    move-result v1

    const/4 v12, 0x0

    invoke-virtual {v13, v1, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->o()I

    move-result v1

    invoke-virtual {v13, v1, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_7

    :cond_13
    const/4 v12, 0x0

    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/appdownloader/s/dq;->dq(I)I

    move-result v1

    invoke-virtual {v13, v1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->o()I

    move-result v1

    invoke-virtual {v13, v1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->kk()I

    move-result v1

    invoke-virtual {v13, v1, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->jy()I

    move-result v1

    invoke-virtual {v13, v1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v1, "tt_appdownloader_notification_download_continue"

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v1

    iget-object v5, v0, Lcom/ss/android/socialbase/appdownloader/s/dq;->ox:Landroid/content/res/Resources;

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_8

    :cond_14
    const/4 v12, 0x0

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->o()I

    move-result v1

    invoke-virtual {v13, v1, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/appdownloader/s/dq;->dq(I)I

    move-result v1

    invoke-virtual {v6, v10}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result v5

    const/4 v2, 0x2

    if-lt v5, v2, :cond_15

    invoke-virtual {v13, v1, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_7

    :cond_15
    invoke-virtual {v13, v1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_7
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->kk()I

    move-result v1

    invoke-virtual {v13, v1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_8
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->no()I

    move-result v1

    iget-object v5, v0, Lcom/ss/android/socialbase/appdownloader/s/dq;->iw:Ljava/lang/String;

    invoke-static {v5}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_29

    invoke-virtual {v13, v1, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v6, v10}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v8, v12}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v22

    invoke-static {v2, v3, v12}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_16

    :cond_16
    move-object v13, v2

    move-wide/from16 v14, v22

    const-string v12, ""

    const/4 v2, 0x3

    if-ne v3, v2, :cond_2b

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ob()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/notification/dq;->s()I

    move-result v2

    const/4 v9, -0x1

    if-eq v2, v9, :cond_17

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/notification/dq;->s()I

    move-result v2

    const/4 v9, -0x4

    if-ne v2, v9, :cond_18

    :cond_17
    move-object/from16 v2, v21

    goto/16 :goto_d

    :cond_18
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/notification/dq;->s()I

    move-result v2

    const/4 v9, -0x3

    if-ne v2, v9, :cond_1e

    invoke-static {v14, v15}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(J)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1a

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v9

    const-string v11, "application/vnd.android.package-archive"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v9, v0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v9, v3, v11}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)Z

    move-result v9

    if-eqz v9, :cond_19

    const-string v9, "tt_appdownloader_notification_install_finished_open"

    invoke-static {v9}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v9

    const-string v11, "tt_appdownloader_notification_download_open"

    invoke-static {v11}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v11

    :goto_9
    move-object/from16 v16, v2

    goto :goto_a

    :cond_19
    const-string v9, "tt_appdownloader_notification_download_complete_with_install"

    invoke-static {v9}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v9

    const-string v11, "tt_appdownloader_notification_download_install"

    invoke-static {v11}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v11

    goto :goto_9

    :cond_1a
    const-string v9, "tt_appdownloader_notification_download_complete_without_install"

    invoke-static {v9}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v9

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/p;->dq()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/ss/android/socialbase/downloader/downloader/p;->mp(I)Lcom/ss/android/socialbase/downloader/depend/op;

    move-result-object v11

    if-eqz v11, :cond_1b

    const-string v9, "tt_appdownloader_notification_download_complete_open"

    invoke-static {v9}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v9

    :cond_1b
    move-object/from16 v16, v2

    const/4 v11, 0x0

    :goto_a
    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/s/dq;->ox:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/zc;->t(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object/from16 v17, v2

    move-object/from16 v2, v21

    iput-object v9, v2, Lg/zc;->i:Ljava/lang/CharSequence;

    if-eqz v11, :cond_1c

    iget-object v9, v0, Lcom/ss/android/socialbase/appdownloader/s/dq;->ox:Landroid/content/res/Resources;

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    :cond_1c
    invoke-virtual {v6, v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result v1

    const/4 v11, 0x1

    if-ne v1, v11, :cond_1d

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->no()I

    move-result v1

    invoke-virtual {v13, v1, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->jy()I

    move-result v1

    const/16 v9, 0x8

    invoke-virtual {v13, v1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_b

    :cond_1d
    const/16 v9, 0x8

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->no()I

    move-result v1

    invoke-virtual {v13, v1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_b
    move-object/from16 v1, p1

    move-object/from16 v21, v2

    move-object v11, v12

    move-object/from16 v2, v17

    :goto_c
    const/4 v12, 0x0

    goto/16 :goto_12

    :cond_1e
    move-object/from16 v1, p1

    move-object v2, v12

    move-object v11, v2

    move-object/from16 v16, v11

    goto :goto_c

    :goto_d
    invoke-virtual {v6, v10}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result v1

    const/4 v9, 0x2

    if-lt v1, v9, :cond_20

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/notification/dq;->s()I

    move-result v1

    const/4 v9, -0x1

    if-ne v1, v9, :cond_20

    invoke-static/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->kk(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-static/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->ia(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v8}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_20
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->jy()I

    move-result v1

    const/16 v9, 0x8

    invoke-virtual {v13, v1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz p1, :cond_21

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v1

    const/16 v9, 0x3ee

    if-ne v1, v9, :cond_21

    const-string v1, "tt_appdownloader_notification_download_space_failed"

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v1

    iget-object v9, v0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v2

    move-object v2, v1

    move-object/from16 v1, p1

    goto :goto_10

    :cond_21
    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v3}, Lcom/ss/android/socialbase/appdownloader/s/dq;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;Lcom/ss/android/socialbase/downloader/mn/dq;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v9

    if-eqz v9, :cond_23

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result v9

    if-eqz v9, :cond_22

    const-string v9, "tt_appdownloader_notification_download_waiting_wifi"

    invoke-static {v9}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v9

    :goto_e
    move-object/from16 v21, v2

    goto :goto_f

    :cond_22
    const-string v9, "tt_appdownloader_notification_download_waiting_net"

    invoke-static {v9}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v9

    goto :goto_e

    :goto_f
    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_23
    move-object/from16 v21, v2

    const-string v2, "tt_appdownloader_notification_download_failed"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v2

    iget-object v9, v0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_10
    const-string v9, "tt_appdownloader_notification_download_restart"

    invoke-static {v9}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->no()I

    move-result v9

    move-object/from16 v17, v2

    const/16 v2, 0x8

    invoke-virtual {v13, v9, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v6, v10}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result v2

    const/4 v9, 0x2

    if-lt v2, v9, :cond_26

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/notification/dq;->s()I

    move-result v9

    const/4 v2, -0x1

    if-ne v9, v2, :cond_26

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/kk/iw;->kk(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {v1, v3}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "tt_appdownloader_notification_no_wifi_and_in_net"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v2

    iget-object v9, v0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v9

    iget-object v11, v0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v11, v9

    move-object/from16 v16, v12

    goto/16 :goto_c

    :cond_24
    const-string v2, "tt_appdownloader_notification_no_internet_error"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v2

    iget-object v9, v0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v12

    move-object/from16 v11, v17

    goto/16 :goto_c

    :cond_25
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/kk/iw;->ia(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v2, "tt_appdownloader_notification_insufficient_space_error"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v2

    iget-object v9, v0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sub-long v22, v14, v7

    invoke-static/range {v22 .. v23}, Lcom/ss/android/socialbase/appdownloader/ox;->d(J)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v18, v12

    const/4 v12, 0x0

    aput-object v16, v11, v12

    invoke-virtual {v9, v2, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    :cond_26
    move-object/from16 v18, v12

    const/4 v12, 0x0

    move-object/from16 v2, v16

    :goto_11
    move-object/from16 v11, v17

    move-object/from16 v16, v18

    :goto_12
    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/appdownloader/s/dq;->dq(I)I

    move-result v9

    const/16 v12, 0x8

    invoke-virtual {v13, v9, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->kk()I

    move-result v9

    const/4 v12, 0x0

    invoke-virtual {v13, v9, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->o()I

    move-result v9

    const/16 v12, 0x8

    invoke-virtual {v13, v9, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v6, v10}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result v6

    const/4 v9, 0x2

    if-lt v6, v9, :cond_2a

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/notification/dq;->s()I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_2a

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/kk/iw;->kk(Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_27

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/kk/iw;->ia(Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_2a

    :cond_27
    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/appdownloader/s/dq;->dq(I)I

    move-result v5

    const/4 v12, 0x0

    invoke-virtual {v13, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->kk()I

    move-result v5

    const/16 v9, 0x8

    invoke-virtual {v13, v5, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->o()I

    move-result v5

    invoke-virtual {v13, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->no()I

    move-result v5

    invoke-static {v1, v3}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v13, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v8, v12}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15, v12}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v14, v2

    goto/16 :goto_16

    :cond_28
    move-object v14, v2

    move v1, v5

    move-object/from16 v3, v16

    const/16 v9, 0x8

    :cond_29
    invoke-virtual {v13, v1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_16

    :cond_2a
    move-object v14, v2

    move-object/from16 v3, v16

    goto/16 :goto_16

    :cond_2b
    move-object v3, v12

    move-object v11, v3

    move-object v14, v11

    goto/16 :goto_16

    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v8}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x1

    if-ne v3, v11, :cond_2d

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/notification/dq;->s()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2c

    const-string v3, "tt_appdownloader_notification_waiting_download_complete_handler"

    invoke-static {v3}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v3

    goto :goto_14

    :cond_2c
    const-string v3, "tt_appdownloader_notification_downloading"

    invoke-static {v3}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v3

    goto :goto_14

    :cond_2d
    const-string v3, "tt_appdownloader_notification_prepare"

    invoke-static {v3}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v3

    :goto_14
    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v3, "tt_appdownloader_notification_download_pause"

    invoke-static {v3}, Lcom/ss/android/socialbase/appdownloader/kk;->d(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/appdownloader/s/dq;->dq(I)I

    move-result v3

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->kk()I

    move-result v3

    const/16 v9, 0x8

    invoke-virtual {v13, v3, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->o()I

    move-result v3

    invoke-virtual {v13, v3, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->no()I

    move-result v3

    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/s/dq;->iw:Ljava/lang/String;

    invoke-static {v4}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-virtual {v13, v3, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_15

    :cond_2e
    invoke-virtual {v13, v3, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_15
    invoke-virtual {v6, v10}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result v4

    const/4 v2, 0x2

    if-lt v4, v2, :cond_2f

    invoke-virtual {v13, v3, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_2f
    move-object v3, v1

    :cond_30
    :goto_16
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->q()I

    move-result v1

    invoke-virtual {v13, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->f()I

    move-result v1

    invoke-virtual {v13, v1, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->jy()I

    move-result v1

    invoke-virtual {v13, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->fw()I

    move-result v1

    invoke-virtual {v13, v1, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->no()I

    move-result v1

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/16 v9, 0x8

    invoke-virtual {v13, v1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_17

    :cond_31
    invoke-virtual {v13, v1, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_17
    invoke-virtual/range {v21 .. v21}, Lg/zc;->y()Landroid/app/Notification;

    move-result-object v1

    iput-object v13, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object v1
.end method

.method private dq(I)I
    .locals 1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p1

    const-string v0, "enable_notification_ui"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->ia()I

    move-result p1

    return p1

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->mn()I

    move-result p1

    return p1
.end method

.method private dq(II)I
    .locals 1

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p2

    const-string v0, "notification_opt_2"

    invoke-virtual {p2, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->le()I

    move-result p1

    return p1

    :cond_0
    if-eq p1, v0, :cond_4

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->i()I

    move-result p1

    return p1

    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->le()I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->r()I

    move-result p1

    return p1
.end method

.method private dq(Ljava/lang/String;II)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    const-class v2, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_click_download_ids"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_click_download_type"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_from_notification"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    const/high16 p2, 0xc000000

    invoke-static {p1, p3, v0, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;Lcom/ss/android/socialbase/downloader/mn/dq;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x3f5

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result p1

    const/16 v1, 0x419

    if-ne p1, v1, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "application/vnd.android.package-archive"

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "notification_text_opt"

    invoke-virtual {p2, p1, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    return p2

    :cond_1
    return v0
.end method

.method private kk()Landroid/widget/RemoteViews;
    .locals 5

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->dq()I

    move-result v0

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->iw()I

    move-result v0

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s;->cd()I

    move-result v2

    const-string v3, "setBackgroundColor"

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v1
.end method

.method private o()Lg/zc;
    .locals 4

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/p;->kk()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    new-instance v0, Lg/zc;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lg/zc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/ox;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/p;->mp()Lcom/ss/android/socialbase/appdownloader/ox/mp;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/p;->mp()Lcom/ss/android/socialbase/appdownloader/ox/mp;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcom/ss/android/socialbase/appdownloader/ox/mp;->dq(Landroid/content/Context;Ljava/lang/String;)Lg/zc;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v1, Lg/zc;

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lg/zc;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Lg/zc;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lg/zc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/s/dq;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/s/dq;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->dq:Landroid/app/Notification;

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/dq;->dq(Landroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/s/dq;->s:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/s/dq;->p:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/s/dq;->iw:Ljava/lang/String;

    return-void
.end method

.class public Lcom/ss/android/downloadlib/addownload/dq/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/dq/dq$dq;
    }
.end annotation


# static fields
.field private static d:Lcom/ss/android/downloadlib/addownload/dq/dq; = null

.field private static final dq:Ljava/lang/String; = "dq"


# instance fields
.field private iw:Lcom/ss/android/downloadlib/addownload/dq/d;

.field private ox:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ss/android/downloadlib/addownload/d/dq;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private s:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/dq/dq;->p:Z

    new-instance v0, Lcom/ss/android/downloadlib/addownload/dq/d;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/dq/d;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/dq;->iw:Lcom/ss/android/downloadlib/addownload/dq/d;

    const-string v1, "sp_ad_install_back_dialog"

    const-string v2, "key_uninstalled_list"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/dq;->ox:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static dq()Lcom/ss/android/downloadlib/addownload/dq/dq;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/dq/dq;->d:Lcom/ss/android/downloadlib/addownload/dq/dq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/downloadlib/addownload/dq/dq;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/dq/dq;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/dq/dq;->d:Lcom/ss/android/downloadlib/addownload/dq/dq;

    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/addownload/dq/dq;->d:Lcom/ss/android/downloadlib/addownload/dq/dq;

    return-object v0
.end method

.method private dq(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/d/dq;Lcom/ss/android/downloadlib/addownload/dq/dq$dq;Z)V
    .locals 10

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v0

    iget-wide v1, p2, Lcom/ss/android/downloadlib/addownload/d/dq;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/d/iw;->p(J)Lcom/ss/android/downloadad/api/dq/d;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object p1

    const-string p2, "showBackInstallDialog nativeModel null"

    invoke-virtual {p1, p2}, Lcom/ss/android/downloadlib/s/ox;->dq(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->ox()Lcom/ss/android/download/api/config/ig;

    move-result-object v0

    new-instance v1, Lcom/ss/android/download/api/model/d$dq;

    invoke-direct {v1, p1}, Lcom/ss/android/download/api/model/d$dq;-><init>(Landroid/content/Context;)V

    if-eqz p4, :cond_1

    const-string v2, "\u5e94\u7528\u5b89\u88c5\u786e\u8ba4"

    goto :goto_0

    :cond_1
    const-string v2, "\u9000\u51fa\u786e\u8ba4"

    :goto_0
    invoke-virtual {v1, v2}, Lcom/ss/android/download/api/model/d$dq;->dq(Ljava/lang/String;)Lcom/ss/android/download/api/model/d$dq;

    move-result-object v1

    iget-object v2, p2, Lcom/ss/android/downloadlib/addownload/d/dq;->s:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "\u521a\u521a\u4e0b\u8f7d\u7684\u5e94\u7528"

    goto :goto_1

    :cond_2
    iget-object v2, p2, Lcom/ss/android/downloadlib/addownload/d/dq;->s:Ljava/lang/String;

    :goto_1
    const/4 v9, 0x1

    new-array v3, v9, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "%1$s\u4e0b\u8f7d\u5b8c\u6210\uff0c\u662f\u5426\u7acb\u5373\u5b89\u88c5\uff1f"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/download/api/model/d$dq;->d(Ljava/lang/String;)Lcom/ss/android/download/api/model/d$dq;

    move-result-object v1

    const-string v2, "\u7acb\u5373\u5b89\u88c5"

    invoke-virtual {v1, v2}, Lcom/ss/android/download/api/model/d$dq;->ox(Ljava/lang/String;)Lcom/ss/android/download/api/model/d$dq;

    move-result-object v1

    if-eqz p4, :cond_3

    const-string p4, "\u6682\u4e0d\u5b89\u88c5"

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p4, v2, v4

    const-string p4, "\u9000\u51fa%1$s"

    invoke-static {p4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    :goto_2
    invoke-virtual {v1, p4}, Lcom/ss/android/download/api/model/d$dq;->p(Ljava/lang/String;)Lcom/ss/android/download/api/model/d$dq;

    move-result-object p4

    invoke-virtual {p4, v4}, Lcom/ss/android/download/api/model/d$dq;->dq(Z)Lcom/ss/android/download/api/model/d$dq;

    move-result-object p4

    iget-object v1, p2, Lcom/ss/android/downloadlib/addownload/d/dq;->mn:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/ss/android/downloadlib/mn/mp;->dq(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/ss/android/download/api/model/d$dq;->dq(Landroid/graphics/drawable/Drawable;)Lcom/ss/android/download/api/model/d$dq;

    move-result-object p4

    new-instance v3, Lcom/ss/android/downloadlib/addownload/dq/dq$1;

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/ss/android/downloadlib/addownload/dq/dq$1;-><init>(Lcom/ss/android/downloadlib/addownload/dq/dq;Lcom/ss/android/downloadad/api/dq/d;Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/d/dq;Lcom/ss/android/downloadlib/addownload/dq/dq$dq;)V

    invoke-virtual {p4, v3}, Lcom/ss/android/download/api/model/d$dq;->dq(Lcom/ss/android/download/api/model/d$d;)Lcom/ss/android/download/api/model/d$dq;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/ss/android/download/api/model/d$dq;->dq(I)Lcom/ss/android/download/api/model/d$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/download/api/model/d$dq;->dq()Lcom/ss/android/download/api/model/d;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ss/android/download/api/config/ig;->d(Lcom/ss/android/download/api/model/d;)Landroid/app/Dialog;

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p1

    const-string p2, "backdialog_show"

    invoke-virtual {p1, p2, v5}, Lcom/ss/android/downloadlib/p/dq;->d(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)V

    iget-object p1, v7, Lcom/ss/android/downloadlib/addownload/d/dq;->p:Ljava/lang/String;

    iput-object p1, v4, Lcom/ss/android/downloadlib/addownload/dq/dq;->s:Ljava/lang/String;

    return-void
.end method

.method private dq(Landroid/app/Activity;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZLcom/ss/android/downloadlib/addownload/dq/dq$dq;)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    if-nez p2, :cond_0

    :try_start_0
    iget-object v5, v1, Lcom/ss/android/downloadlib/addownload/dq/dq;->ox:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v5, 0x1

    if-eqz p2, :cond_2

    iget-object v6, v1, Lcom/ss/android/downloadlib/addownload/dq/dq;->ox:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v7, Lcom/ss/android/downloadlib/addownload/d/dq;

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v6

    int-to-long v8, v6

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v17

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v7 .. v17}, Lcom/ss/android/downloadlib/addownload/d/dq;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v7, v2, v3}, Lcom/ss/android/downloadlib/addownload/dq/dq;->dq(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/d/dq;ZLcom/ss/android/downloadlib/addownload/dq/dq$dq;)V

    return v5

    :cond_2
    if-eqz p2, :cond_3

    new-instance v6, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    goto :goto_0

    :cond_3
    const-wide/16 v6, 0x0

    :goto_0
    iget-object v8, v1, Lcom/ss/android/downloadlib/addownload/dq/dq;->ox:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ss/android/downloadlib/addownload/d/dq;

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v9, Lcom/ss/android/downloadlib/addownload/d/dq;->p:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/ss/android/downloadlib/mn/mp;->s(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, v9, Lcom/ss/android/downloadlib/addownload/d/dq;->mn:Ljava/lang/String;

    invoke-static {v10}, Lcom/ss/android/downloadlib/mn/mp;->dq(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v8, Ljava/io/File;

    iget-object v10, v9, Lcom/ss/android/downloadlib/addownload/d/dq;->mn:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v8, v10, v6

    if-ltz v8, :cond_5

    invoke-virtual {v1, v0, v9, v2, v3}, Lcom/ss/android/downloadlib/addownload/dq/dq;->dq(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/d/dq;ZLcom/ss/android/downloadlib/addownload/dq/dq$dq;)V

    goto :goto_1

    :cond_5
    new-instance v6, Lcom/ss/android/downloadlib/addownload/d/dq;

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v16

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v6 .. v16}, Lcom/ss/android/downloadlib/addownload/d/dq;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v6, v2, v3}, Lcom/ss/android/downloadlib/addownload/dq/dq;->dq(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/d/dq;ZLcom/ss/android/downloadlib/addownload/dq/dq$dq;)V

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    :goto_1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/dq/dq;->dq:Ljava/lang/String;

    const-string v2, "tryShowInstallDialog isShow:"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/ss/android/downloadlib/mn/no;->dq(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_3
    return v4
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/dq/dq;->s:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/dq;->s:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/dq/dq;->s:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public dq(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/ss/android/downloadlib/o;->dq(Landroid/content/Context;)Lcom/ss/android/downloadlib/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/o;->d()J

    move-result-wide v1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "enable_miniapp_dialog"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v3

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getSuccessedDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/ss/android/downloadlib/mn/mp;->s(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ss/android/downloadlib/mn/mp;->dq(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Ljava/io/File;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    cmp-long v11, v9, v1

    if-ltz v11, :cond_2

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v11, :cond_2

    :try_start_1
    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v12, "isMiniApp"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v11, :cond_3

    goto :goto_0

    :cond_3
    cmp-long v11, v6, v4

    if-nez v11, :cond_4

    :goto_1
    move-object v0, v8

    move-wide v6, v9

    goto :goto_0

    :cond_4
    cmp-long v11, v9, v6

    if-lez v11, :cond_2

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_5
    :goto_2
    return-object v0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    return-object v0
.end method

.method public dq(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/ss/android/downloadlib/addownload/dq/dq;->ox:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    const-string v3, "key_uninstalled_list"

    const-string v4, "sp_ad_install_back_dialog"

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lcom/ss/android/downloadlib/addownload/dq/dq;->ox:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/downloadlib/addownload/d/dq;

    if-eqz v2, :cond_0

    iget-wide v5, v2, Lcom/ss/android/downloadlib/addownload/d/dq;->d:J

    cmp-long v2, v5, p3

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/ss/android/downloadlib/addownload/dq/dq;->ox:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Lcom/ss/android/downloadlib/addownload/d/dq;

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    invoke-direct/range {v5 .. v15}, Lcom/ss/android/downloadlib/addownload/d/dq;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/ss/android/downloadlib/addownload/dq/dq;->iw:Lcom/ss/android/downloadlib/addownload/dq/d;

    iget-object v2, v0, Lcom/ss/android/downloadlib/addownload/dq/dq;->ox:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v4, v3, v2}, Lcom/ss/android/downloadlib/addownload/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/ss/android/downloadlib/addownload/dq/dq;->ox:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Lcom/ss/android/downloadlib/addownload/d/dq;

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    invoke-direct/range {v5 .. v15}, Lcom/ss/android/downloadlib/addownload/d/dq;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/ss/android/downloadlib/addownload/dq/dq;->iw:Lcom/ss/android/downloadlib/addownload/dq/d;

    iget-object v2, v0, Lcom/ss/android/downloadlib/addownload/dq/dq;->ox:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v4, v3, v2}, Lcom/ss/android/downloadlib/addownload/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method public dq(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/d/dq;ZLcom/ss/android/downloadlib/addownload/dq/dq$dq;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/dq;->ox:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/ss/android/downloadlib/addownload/dq/dq;->dq(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/d/dq;Lcom/ss/android/downloadlib/addownload/dq/dq$dq;Z)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/ss/android/downloadlib/addownload/dq/dq;->p:Z

    invoke-static {p1}, Lcom/ss/android/downloadlib/o;->dq(Landroid/content/Context;)Lcom/ss/android/downloadlib/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/o;->ox()V

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/dq/dq;->iw:Lcom/ss/android/downloadlib/addownload/dq/d;

    const-string p2, "sp_ad_install_back_dialog"

    const-string p3, "key_uninstalled_list"

    invoke-virtual {p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/dq/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/ss/android/downloadlib/addownload/dq/dq;->dq:Ljava/lang/String;

    const-string p2, "tryShowInstallDialog isShow:true"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/ss/android/downloadlib/mn/no;->dq(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public dq(Lcom/ss/android/downloadad/api/dq/d;)V
    .locals 3

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "enable_open_app_dialog"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->ha()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->fw()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/ss/android/downloadad/api/dq/d;->no(Z)V

    invoke-static {p1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->dq(Lcom/ss/android/downloadad/api/dq/dq;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Landroid/app/Activity;ZLcom/ss/android/downloadlib/addownload/dq/dq$dq;)Z
    .locals 2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "disable_install_app_dialog"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/dq/dq;->p:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/dq/dq;->dq(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ss/android/downloadlib/addownload/dq/dq;->dq(Landroid/app/Activity;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZLcom/ss/android/downloadlib/addownload/dq/dq$dq;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public dq(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/dq;->s:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

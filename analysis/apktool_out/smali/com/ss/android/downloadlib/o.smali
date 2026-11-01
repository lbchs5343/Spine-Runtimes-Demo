.class public Lcom/ss/android/downloadlib/o;
.super Ljava/lang/Object;


# static fields
.field private static volatile dq:Lcom/ss/android/downloadlib/o;


# instance fields
.field private final d:Lcom/ss/android/download/api/dq;

.field private iw:J

.field private final ox:Lcom/ss/android/downloadlib/ia;

.field private final p:Lcom/ss/android/downloadad/api/dq;

.field private s:Lcom/ss/android/downloadad/api/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/ss/android/downloadlib/ia;->dq()Lcom/ss/android/downloadlib/ia;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/o;->ox:Lcom/ss/android/downloadlib/ia;

    new-instance v0, Lcom/ss/android/downloadlib/iw;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/iw;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/o;->d:Lcom/ss/android/download/api/dq;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/o;->iw:J

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/o;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/ss/android/downloadlib/dq;->dq()Lcom/ss/android/downloadlib/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/downloadlib/o;->p:Lcom/ss/android/downloadad/api/dq;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/ss/android/downloadlib/o$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/o;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic d(Lcom/ss/android/downloadlib/o;)Lcom/ss/android/downloadlib/ia;
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/downloadlib/o;->ia()Lcom/ss/android/downloadlib/ia;

    move-result-object p0

    return-object p0
.end method

.method private d(Landroid/content/Context;)V
    .locals 7

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/no;->dq(Landroid/content/Context;)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/d/iw;->d()V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object v1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Lcom/ss/android/downloadlib/ox/mn;

    invoke-direct {v4}, Lcom/ss/android/downloadlib/ox/mn;-><init>()V

    new-instance v5, Lcom/ss/android/downloadlib/ox/iw;

    invoke-direct {v5, p1}, Lcom/ss/android/downloadlib/ox/iw;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/ss/android/downloadlib/ox;

    invoke-direct {v6}, Lcom/ss/android/downloadlib/ox;-><init>()V

    const-string v3, "misc_config"

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/socialbase/appdownloader/ox/ox;Lcom/ss/android/socialbase/appdownloader/ox/p;Lcom/ss/android/socialbase/appdownloader/ox/ia;)V

    new-instance v0, Lcom/ss/android/downloadlib/ox/p;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/ox/p;-><init>()V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Lcom/ss/android/socialbase/appdownloader/ox/mn;)V

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->registerDownloadCacheSyncListener(Lcom/ss/android/socialbase/downloader/depend/no;)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object p1

    new-instance v0, Lcom/ss/android/downloadlib/addownload/mp;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/mp;-><init>()V

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Lcom/ss/android/socialbase/downloader/downloader/cd;)V

    new-instance p1, Lcom/ss/android/downloadlib/ox/s;

    invoke-direct {p1}, Lcom/ss/android/downloadlib/ox/s;-><init>()V

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(Lcom/ss/android/socialbase/downloader/p/ox;)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object p1

    invoke-static {}, Lcom/ss/android/downloadlib/iw/ox;->dq()Lcom/ss/android/downloadlib/iw/ox;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Lcom/ss/android/socialbase/appdownloader/ox/o;)V

    return-void
.end method

.method public static dq(Landroid/content/Context;)Lcom/ss/android/downloadlib/o;
    .locals 2

    sget-object v0, Lcom/ss/android/downloadlib/o;->dq:Lcom/ss/android/downloadlib/o;

    if-nez v0, :cond_1

    const-class v0, Lcom/ss/android/downloadlib/o;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/o;->dq:Lcom/ss/android/downloadlib/o;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/downloadlib/o$1;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/o$1;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/ss/android/downloadlib/s/d;->dq(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/ss/android/downloadlib/o;->dq:Lcom/ss/android/downloadlib/o;

    return-object p0
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/o;)Lcom/ss/android/downloadlib/o;
    .locals 0

    sput-object p0, Lcom/ss/android/downloadlib/o;->dq:Lcom/ss/android/downloadlib/o;

    return-object p0
.end method

.method private ia()Lcom/ss/android/downloadlib/ia;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/o;->ox:Lcom/ss/android/downloadlib/ia;

    return-object v0
.end method


# virtual methods
.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/downloadlib/o;->iw:J

    return-wide v0
.end method

.method public d(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public dq()Lcom/ss/android/download/api/dq;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/o;->d:Lcom/ss/android/download/api/dq;

    return-object v0
.end method

.method public dq(Ljava/lang/String;)Lcom/ss/android/download/api/dq;
    .locals 2

    invoke-static {}, Lcom/ss/android/downloadlib/mn;->dq()Lcom/ss/android/downloadlib/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/mn;->d()Lcom/ss/android/download/api/config/iw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/download/api/config/iw;->dq(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/download/api/config/iw;->d(Ljava/lang/String;)Lcom/ss/android/download/api/dq;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/o;->d:Lcom/ss/android/download/api/dq;

    return-object p1
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/o;->d(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public dq(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V
    .locals 6

    new-instance v0, Lcom/ss/android/downloadlib/o$4;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/downloadlib/o$4;-><init>(Lcom/ss/android/downloadlib/o;Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V

    invoke-static {v0}, Lcom/ss/android/downloadlib/s/d;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Lcom/ss/android/download/api/download/dq/dq;)V
    .locals 1

    invoke-direct {p0}, Lcom/ss/android/downloadlib/o;->ia()Lcom/ss/android/downloadlib/ia;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/ia;->dq(Lcom/ss/android/download/api/download/dq/dq;)V

    return-void
.end method

.method public dq(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/ss/android/downloadlib/o$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/ss/android/downloadlib/o$2;-><init>(Lcom/ss/android/downloadlib/o;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/ss/android/downloadlib/s/d;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V
    .locals 8

    new-instance v0, Lcom/ss/android/downloadlib/o$6;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/downloadlib/o$6;-><init>(Lcom/ss/android/downloadlib/o;Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V

    invoke-static {v0}, Lcom/ss/android/downloadlib/s/d;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V
    .locals 9

    new-instance v0, Lcom/ss/android/downloadlib/o$7;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/downloadlib/o$7;-><init>(Lcom/ss/android/downloadlib/o;Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V

    invoke-static {v0}, Lcom/ss/android/downloadlib/s/d;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/OnItemClickListener;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V
    .locals 10

    new-instance v0, Lcom/ss/android/downloadlib/o$5;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/ss/android/downloadlib/o$5;-><init>(Lcom/ss/android/downloadlib/o;Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/OnItemClickListener;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V

    invoke-static {v0}, Lcom/ss/android/downloadlib/s/d;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/ss/android/downloadlib/o$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/ss/android/downloadlib/o$3;-><init>(Lcom/ss/android/downloadlib/o;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/ss/android/downloadlib/s/d;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mn()V
    .locals 1

    invoke-static {}, Lcom/ss/android/downloadlib/s;->dq()Lcom/ss/android/downloadlib/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/s;->iw()V

    return-void
.end method

.method public ox()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/o;->iw:J

    return-void
.end method

.method public p()Lcom/ss/android/downloadad/api/dq;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/o;->p:Lcom/ss/android/downloadad/api/dq;

    return-object v0
.end method

.method public s()Lcom/ss/android/downloadad/api/d;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/o;->s:Lcom/ss/android/downloadad/api/d;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/d;->dq()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/o;->s:Lcom/ss/android/downloadad/api/d;

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/o;->s:Lcom/ss/android/downloadad/api/d;

    return-object v0
.end method

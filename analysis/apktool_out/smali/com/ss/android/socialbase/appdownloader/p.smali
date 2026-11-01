.class public Lcom/ss/android/socialbase/appdownloader/p;
.super Ljava/lang/Object;


# static fields
.field private static volatile d:Lcom/ss/android/socialbase/appdownloader/p; = null

.field private static final dq:Ljava/lang/String; = "p"

.field private static ia:Z

.field private static iw:Z

.field private static mn:Z


# instance fields
.field private cd:Lcom/ss/android/socialbase/appdownloader/ox/iw;

.field private f:Lcom/ss/android/socialbase/appdownloader/ox/mn;

.field private fw:Lcom/ss/android/socialbase/appdownloader/ox/mp;

.field private gh:Lcom/ss/android/socialbase/appdownloader/ox/o;

.field private i:Lcom/ss/android/socialbase/downloader/depend/ir;

.field private ig:Z

.field private jy:Lcom/ss/android/socialbase/appdownloader/ox/ia;

.field private kk:Ljava/util/concurrent/Future;

.field private le:Lcom/ss/android/socialbase/appdownloader/ox/jy;

.field private mp:Lcom/ss/android/socialbase/appdownloader/ox/ox;

.field private no:Z

.field private o:I

.field private ox:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lcom/ss/android/socialbase/appdownloader/ox/p;

.field private r:Lcom/ss/android/socialbase/downloader/depend/bl;

.field private s:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-direct {v0}, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/p;->s:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/p;->no:Z

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/p;->ig:Z

    return-void
.end method

.method public static synthetic cd()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/p;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/ss/android/socialbase/appdownloader/p;)Lcom/ss/android/socialbase/appdownloader/ox/ia;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/p;->jy:Lcom/ss/android/socialbase/appdownloader/ox/ia;

    return-object p0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isSavePathRedirected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private d(I)V
    .locals 3

    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "app_install_keep_receiver_time_s"

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/p;->o:I

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/p;->dq:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tryUnRegisterTempAppInstallDownloadReceiver mAppInstallReceiverKeepTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ss/android/socialbase/appdownloader/p;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/p;->o:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/p;->o:I

    :cond_1
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/p;->kk:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    new-instance p1, Lcom/ss/android/socialbase/appdownloader/p$2;

    invoke-direct {p1, p0}, Lcom/ss/android/socialbase/appdownloader/p$2;-><init>(Lcom/ss/android/socialbase/appdownloader/p;)V

    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/p;->o:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/p;->kk:Ljava/util/concurrent/Future;

    return-void
.end method

.method private dq(Lcom/ss/android/socialbase/appdownloader/ox/s;)Lcom/ss/android/socialbase/downloader/depend/kx;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/p$6;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/appdownloader/p$6;-><init>(Lcom/ss/android/socialbase/appdownloader/p;Lcom/ss/android/socialbase/appdownloader/ox/s;)V

    return-object v0
.end method

.method private dq(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private dq(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/ox;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/ox;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "User-Agent"

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/ox;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/ox;->dq()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/ox;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/ox;->dq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    new-instance v4, Lcom/ss/android/socialbase/downloader/model/ox;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/ox;->dq()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/ox;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/ss/android/socialbase/downloader/model/ox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    new-instance p1, Lcom/ss/android/socialbase/downloader/model/ox;

    sget-object v2, Lcom/ss/android/socialbase/appdownloader/d/dq;->dq:Ljava/lang/String;

    invoke-direct {p1, v1, v2}, Lcom/ss/android/socialbase/downloader/model/ox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/appdownloader/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/p;->gh()V

    return-void
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/appdownloader/p;Lcom/ss/android/socialbase/downloader/model/DownloadTask;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;IZ)V

    return-void
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;IZ)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->download()I

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setAntiHijackErrorCode(I)V

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p1, p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setSavePathRedirected(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static dq(Landroid/content/Context;I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(Landroid/content/Context;IZ)I

    move-result p0

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private gh()V
    .locals 5

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/p;->s:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/ss/android/socialbase/appdownloader/p;->mn:Z

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ob()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/p;->s:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ob()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/p;->s:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/ss/android/socialbase/appdownloader/p;->mn:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/p;->dq:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerDownloadReceiver mIsRegistered:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/ss/android/socialbase/appdownloader/p;->mn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static o()Lcom/ss/android/socialbase/appdownloader/p;
    .locals 2

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/p;->d:Lcom/ss/android/socialbase/appdownloader/p;

    if-nez v0, :cond_1

    const-class v0, Lcom/ss/android/socialbase/appdownloader/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/p;->d:Lcom/ss/android/socialbase/appdownloader/p;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/socialbase/appdownloader/p;

    invoke-direct {v1}, Lcom/ss/android/socialbase/appdownloader/p;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/appdownloader/p;->d:Lcom/ss/android/socialbase/appdownloader/p;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/p;->d:Lcom/ss/android/socialbase/appdownloader/p;

    return-object v0
.end method

.method private ox(Landroid/content/Context;)V
    .locals 3

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/ss/android/socialbase/appdownloader/p;->iw:Z

    if-nez v0, :cond_1

    const-string v0, "application/vnd.android.package-archive"

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/constants/s;->dq(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(Landroid/content/Context;)V

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/p/d;

    invoke-direct {p1}, Lcom/ss/android/socialbase/appdownloader/p/d;-><init>()V

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(Lcom/ss/android/socialbase/downloader/downloader/ig;)V

    iget-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/p;->ig:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/p$1;

    invoke-direct {p1, p0}, Lcom/ss/android/socialbase/appdownloader/p$1;-><init>(Lcom/ss/android/socialbase/appdownloader/p;)V

    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/p;->gh()V

    :goto_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/p;->r()V

    const/4 p1, 0x1

    sput-boolean p1, Lcom/ss/android/socialbase/appdownloader/p;->iw:Z

    :cond_1
    return-void
.end method

.method private r()V
    .locals 1

    new-instance v0, Lcom/ss/android/socialbase/appdownloader/p$3;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/appdownloader/p$3;-><init>(Lcom/ss/android/socialbase/appdownloader/p;)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/cd;->dq(Lcom/ss/android/socialbase/downloader/impls/cd$d;)V

    return-void
.end method


# virtual methods
.method public d()Lcom/ss/android/socialbase/appdownloader/ox/p;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/p;->q:Lcom/ss/android/socialbase/appdownloader/ox/p;

    return-object v0
.end method

.method public d(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadingDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ob()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->setDefaultSavePath(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/appdownloader/iw;)I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v5, 0x0

    goto/16 :goto_d

    :cond_1
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->p()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v7

    :cond_2
    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->gh()I

    move-result v4

    if-nez v4, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->d()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->ig()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v9, v3, v5}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception v0

    const/16 v17, 0x0

    goto/16 :goto_c

    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xff

    if-le v10, v11, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v11

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_5
    move-object v14, v3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v12, v14

    goto :goto_2

    :cond_6
    move-object v12, v9

    :goto_2
    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->ig()Ljava/lang/String;

    move-result-object v3

    const-string v9, ".apk"

    invoke-virtual {v14, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->ig()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ss/android/socialbase/appdownloader/ox;->ox(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v3, "application/vnd.android.package-archive"

    :cond_7
    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->ox()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->ox()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/ox;->d()Ljava/lang/String;

    move-result-object v9

    :cond_8
    move-object v13, v9

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_b

    :cond_a
    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->by()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    move-object v9, v2

    :cond_b
    invoke-static {v9, v13}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->bu()Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v9

    const-string v10, "resume_task_override_settings"

    invoke-virtual {v9, v10}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ob()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_c

    :try_start_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v9}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadSettingString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Lcom/ss/android/socialbase/appdownloader/iw;->dq(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/iw;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_c
    :try_start_2
    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->bu()Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(ILorg/json/JSONObject;)V

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->wn()Z

    move-result v9

    invoke-static {v11}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v10

    const-string v15, "modify_force"

    invoke-virtual {v10, v15, v8}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_d

    if-nez v9, :cond_d

    invoke-static {v13, v14}, Lcom/ss/android/socialbase/downloader/kk/iw;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v10

    if-nez v10, :cond_d

    const/4 v9, 0x1

    :cond_d
    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->o()Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v10

    if-nez v10, :cond_f

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->s()Z

    move-result v15

    if-nez v15, :cond_e

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->iw()Z

    move-result v15

    if-eqz v15, :cond_f

    :cond_e
    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->q()Lcom/ss/android/socialbase/downloader/notification/dq;

    move-result-object v10

    if-eqz v10, :cond_10

    new-instance v10, Lcom/ss/android/socialbase/appdownloader/s/d;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->q()Lcom/ss/android/socialbase/downloader/notification/dq;

    move-result-object v15

    invoke-direct {v10, v15}, Lcom/ss/android/socialbase/appdownloader/s/d;-><init>(Lcom/ss/android/socialbase/downloader/notification/dq;)V

    :cond_f
    move v8, v9

    goto :goto_3

    :cond_10
    move v10, v9

    new-instance v9, Lcom/ss/android/socialbase/appdownloader/s/d;

    move v15, v10

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->getContext()Landroid/content/Context;

    move-result-object v10

    move/from16 v16, v15

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->no()Ljava/lang/String;

    move-result-object v15

    move/from16 v8, v16

    invoke-direct/range {v9 .. v15}, Lcom/ss/android/socialbase/appdownloader/s/d;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    :goto_3
    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->vf()Lcom/ss/android/socialbase/downloader/depend/q;

    move-result-object v9

    if-nez v9, :cond_11

    new-instance v9, Lcom/ss/android/socialbase/appdownloader/p$4;

    invoke-direct {v9, v1}, Lcom/ss/android/socialbase/appdownloader/p$4;-><init>(Lcom/ss/android/socialbase/appdownloader/p;)V

    :cond_11
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ji()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_12

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_12

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v17, 0x0

    :try_start_3
    move-object/from16 v7, v16

    check-cast v7, Lcom/ss/android/socialbase/downloader/depend/mp;

    invoke-virtual {v6, v7}, Lcom/ss/android/socialbase/appdownloader/iw;->dq(Lcom/ss/android/socialbase/downloader/depend/mp;)Lcom/ss/android/socialbase/appdownloader/iw;

    const/4 v7, 0x0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto/16 :goto_c

    :cond_12
    const/16 v17, 0x0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->no()Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_13

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_5
    move/from16 v16, v4

    goto :goto_6

    :catchall_3
    move/from16 v16, v4

    :catchall_4
    move/from16 v18, v5

    goto :goto_7

    :cond_13
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_5

    :goto_6
    :try_start_5
    const-string v4, "auto_install_with_notification"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move/from16 v18, v5

    :try_start_6
    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->mn()Z

    move-result v5

    invoke-virtual {v15, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "auto_install_without_notification"

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->iw()Z

    move-result v5

    invoke-virtual {v15, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    :goto_7
    :try_start_7
    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->s()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->iw()Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_8

    :cond_14
    const/4 v4, 0x0

    goto :goto_9

    :cond_15
    :goto_8
    const/4 v4, 0x1

    :goto_9
    if-eqz v4, :cond_16

    invoke-static {v11}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v5

    const-string v15, "enable_notification_ui"

    invoke-virtual {v5, v15}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_16

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s/ox;->dq()Lcom/ss/android/socialbase/appdownloader/s/ox;

    move-result-object v5

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->dc()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v11, v15}, Lcom/ss/android/socialbase/appdownloader/s/ox;->dq(ILjava/lang/String;)V

    :cond_16
    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->with(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->url(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->jw()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->backUpUrls(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->name(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->title(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->savePath(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->ia()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->onlyWifi(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->extraHeaders(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->depend(Lcom/ss/android/socialbase/downloader/depend/q;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->k()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->retryCount(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->wp()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->backUpUrlRetryCount(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->showNotification(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->extra(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->mimeType(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->n()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->minProgressTimeMsInterval(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->op()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->maxProgressCount(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->kk()Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->mainThreadListener(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->notificationListener(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->ob()Lcom/ss/android/socialbase/appdownloader/ox/s;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Lcom/ss/android/socialbase/appdownloader/ox/s;)Lcom/ss/android/socialbase/downloader/depend/kx;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->notificationEventListener(Lcom/ss/android/socialbase/downloader/depend/kx;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->force(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->fw()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->autoResumed(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->cd()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->showNotificationForAutoResumed(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->jy()Lcom/ss/android/socialbase/downloader/downloader/ia;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->chunkStategy(Lcom/ss/android/socialbase/downloader/downloader/ia;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->f()Lcom/ss/android/socialbase/downloader/downloader/mn;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->chunkAdjustCalculator(Lcom/ss/android/socialbase/downloader/downloader/mn;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->mp()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needHttpsToHttpRetry(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->packageName(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->md5(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->le()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->expectFileLength(J)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->e()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needRetryDelay(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->kx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->retryDelayTimeArray(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->h()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needDefaultHttpServiceBackUp(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->ji()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needReuseFirstConnection(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->ir()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needReuseChunkRunnable(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->u()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needIndependentProcess(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->er()Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->enqueueType(Lcom/ss/android/socialbase/downloader/constants/EnqueueType;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->nh()Lcom/ss/android/socialbase/downloader/depend/wp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->monitorDepend(Lcom/ss/android/socialbase/downloader/depend/wp;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->bl()Lcom/ss/android/socialbase/downloader/downloader/gh;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->retryDelayTimeCalculator(Lcom/ss/android/socialbase/downloader/downloader/gh;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->c()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->headConnectionAvailable(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->l()Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->fileUriProvider(Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->fd()Lcom/ss/android/socialbase/downloader/depend/cd;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->diskSpaceHandler(Lcom/ss/android/socialbase/downloader/depend/cd;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->ce()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needChunkDowngradeRetry(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->t()Lcom/ss/android/socialbase/downloader/depend/op;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->notificationClickCallback(Lcom/ss/android/socialbase/downloader/depend/op;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->bu()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->downloadSetting(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->dc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->iconUrl(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->v()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needSDKMonitor(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->ds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->monitorScene(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->vw()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->extraMonitorStatus([I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->xz()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->executorGroup(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->yy()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->throttleNetSpeed(J)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->ha()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->distinctDirectory(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->by()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->taskKey(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->cv()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->setAutoInstall(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->gx()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->gx()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->setDownloadCompleteHandlers(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    :cond_17
    if-eqz v3, :cond_19

    if-eqz v4, :cond_18

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->uh()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/s/p;->dq()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v0, Lcom/ss/android/socialbase/appdownloader/p$5;

    move-object v2, v12

    move/from16 v4, v16

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/socialbase/appdownloader/p$5;-><init>(Lcom/ss/android/socialbase/appdownloader/p;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/model/DownloadTask;IZ)V

    invoke-static {v7, v0}, Lcom/ss/android/socialbase/appdownloader/s/p;->dq(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/ox/q;)V

    goto :goto_a

    :cond_18
    move/from16 v4, v16

    move/from16 v5, v18

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/p;->dq:Ljava/lang/String;

    const-string v2, "notification permission need not request, start download :"

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v3, v4, v5}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;IZ)V

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_19
    :goto_a
    return v11

    :goto_b
    return v17

    :goto_c
    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/iw;->nh()Lcom/ss/android/socialbase/downloader/depend/wp;

    move-result-object v2

    new-instance v3, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v4, "addDownloadTask"

    invoke-static {v0, v4}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3eb

    invoke-direct {v3, v5, v4}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v5}, Lcom/ss/android/socialbase/downloader/p/dq;->dq(Lcom/ss/android/socialbase/downloader/depend/wp;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    sget-object v2, Lcom/ss/android/socialbase/appdownloader/p;->dq:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const-string v0, "add download task error:%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/ox/dq;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return v5
.end method

.method public dq()Lcom/ss/android/socialbase/appdownloader/ox/ox;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/p;->mp:Lcom/ss/android/socialbase/appdownloader/ox/ox;

    return-object v0
.end method

.method public dq(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/p;->ia()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->dq(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->dq(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    :cond_3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v2

    const-string v3, "get_download_info_by_list"

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;)Z

    move-result v2

    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/p;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_4
    return-object v0

    :goto_1
    sget-object p2, Lcom/ss/android/socialbase/appdownloader/p;->dq:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getAppDownloadInfo error:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-object v1
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/ss/android/socialbase/appdownloader/ox;->ox(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "application/vnd.android.package-archive"

    return-object p1

    :cond_0
    return-object p2
.end method

.method public dq(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getUnCompletedDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public dq(I)V
    .locals 3

    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "enable_app_install_receiver"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/p;->no()V

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/p;->d(I)V

    return-void
.end method

.method public dq(Landroid/content/Context;II)V
    .locals 0

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->pause(I)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->resume(I)V

    return-void

    :pswitch_3
    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(Landroid/content/Context;IZ)I

    return-void

    :pswitch_4
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->restart(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public dq(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/socialbase/appdownloader/ox/ox;Lcom/ss/android/socialbase/appdownloader/ox/p;Lcom/ss/android/socialbase/appdownloader/ox/ia;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/p;->mp:Lcom/ss/android/socialbase/appdownloader/ox/ox;

    :cond_0
    if-eqz p4, :cond_1

    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/p;->q:Lcom/ss/android/socialbase/appdownloader/ox/p;

    :cond_1
    if-eqz p5, :cond_2

    iput-object p5, p0, Lcom/ss/android/socialbase/appdownloader/p;->jy:Lcom/ss/android/socialbase/appdownloader/ox/ia;

    :cond_2
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/p;->ox(Landroid/content/Context;)V

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/appdownloader/ox/jy;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/p;->le:Lcom/ss/android/socialbase/appdownloader/ox/jy;

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/appdownloader/ox/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/p;->f:Lcom/ss/android/socialbase/appdownloader/ox/mn;

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/appdownloader/ox/o;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/p;->gh:Lcom/ss/android/socialbase/appdownloader/ox/o;

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/depend/bl;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/p;->r:Lcom/ss/android/socialbase/downloader/depend/bl;

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/depend/ir;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/p;->i:Lcom/ss/android/socialbase/downloader/depend/ir;

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/downloader/cd;)V
    .locals 1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ob()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->setReserveWifiStatusListener(Lcom/ss/android/socialbase/downloader/downloader/cd;)V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/p;->p:Ljava/lang/String;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/p;->ig:Z

    return-void
.end method

.method public f()Lcom/ss/android/socialbase/downloader/depend/bl;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/p;->r:Lcom/ss/android/socialbase/downloader/depend/bl;

    return-object v0
.end method

.method public fw()Lcom/ss/android/socialbase/downloader/depend/ir;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/p;->i:Lcom/ss/android/socialbase/downloader/depend/ir;

    return-object v0
.end method

.method public ia()Ljava/io/File;
    .locals 1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ob()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getGlobalSaveDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public ig()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/p;->s:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/ss/android/socialbase/appdownloader/p;->mn:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ob()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/p;->s:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-boolean v1, Lcom/ss/android/socialbase/appdownloader/p;->ia:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/p;->le:Lcom/ss/android/socialbase/appdownloader/ox/jy;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/ss/android/socialbase/appdownloader/ox/jy;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/ss/android/socialbase/appdownloader/p;->mn:Z

    sput-boolean v1, Lcom/ss/android/socialbase/appdownloader/p;->ia:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/p;->dq:Ljava/lang/String;

    const-string v1, "registerDownloadReceiver unRegisterDownloadReceiver"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public iw()Z
    .locals 3

    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->d()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "package_flag_config"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public jy()Lcom/ss/android/socialbase/downloader/downloader/cd;
    .locals 1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ob()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getReserveWifiStatusListener()Lcom/ss/android/socialbase/downloader/downloader/cd;

    move-result-object v0

    return-object v0
.end method

.method public kk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/p;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public mn()Lcom/ss/android/socialbase/appdownloader/ox/o;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/p;->gh:Lcom/ss/android/socialbase/appdownloader/ox/o;

    return-object v0
.end method

.method public mp()Lcom/ss/android/socialbase/appdownloader/ox/mp;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/p;->fw:Lcom/ss/android/socialbase/appdownloader/ox/mp;

    return-object v0
.end method

.method public no()V
    .locals 6

    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "enable_app_install_receiver"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/p;->dq:Ljava/lang/String;

    const-string v1, "disable app install receiver"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/p;->s:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v3, Lcom/ss/android/socialbase/appdownloader/p;->ia:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/ss/android/socialbase/appdownloader/p;->d(I)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :try_start_2
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ob()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/ss/android/socialbase/appdownloader/p;->s:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sput-boolean v2, Lcom/ss/android/socialbase/appdownloader/p;->ia:Z

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/p;->le:Lcom/ss/android/socialbase/appdownloader/ox/jy;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/ss/android/socialbase/appdownloader/ox/jy;->dq()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    :goto_0
    :try_start_4
    invoke-direct {p0, v1}, Lcom/ss/android/socialbase/appdownloader/p;->d(I)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/p;->dq:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tryRegisterTempAppInstallDownloadReceiver mIsAppInstallRegistered:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/ss/android/socialbase/appdownloader/p;->mn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-direct {p0, v1}, Lcom/ss/android/socialbase/appdownloader/p;->d(I)V

    throw v2

    :goto_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method public ox()Lcom/ss/android/socialbase/appdownloader/ox/ia;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/p;->jy:Lcom/ss/android/socialbase/appdownloader/ox/ia;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/p;->p:Ljava/lang/String;

    return-object v0
.end method

.method public q()Lcom/ss/android/socialbase/appdownloader/ox/mn;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/p;->f:Lcom/ss/android/socialbase/appdownloader/ox/mn;

    return-object v0
.end method

.method public s()Lcom/ss/android/socialbase/appdownloader/ox/iw;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/p;->cd:Lcom/ss/android/socialbase/appdownloader/ox/iw;

    return-object v0
.end method

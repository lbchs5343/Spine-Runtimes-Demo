.class public Lcom/ss/android/downloadlib/addownload/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/mn/q$dq;


# static fields
.field private static d:Lcom/ss/android/downloadlib/addownload/dq; = null

.field private static final dq:Ljava/lang/String; = "dq"


# instance fields
.field private ox:Lcom/ss/android/downloadlib/mn/q;

.field private p:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ss/android/downloadlib/mn/q;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/downloadlib/mn/q;-><init>(Landroid/os/Looper;Lcom/ss/android/downloadlib/mn/q$dq;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq;->ox:Lcom/ss/android/downloadlib/mn/q;

    return-void
.end method

.method public static dq()Lcom/ss/android/downloadlib/addownload/dq;
    .locals 2

    sget-object v0, Lcom/ss/android/downloadlib/addownload/dq;->d:Lcom/ss/android/downloadlib/addownload/dq;

    if-nez v0, :cond_1

    const-class v0, Lcom/ss/android/downloadlib/addownload/dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/addownload/dq;->d:Lcom/ss/android/downloadlib/addownload/dq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/downloadlib/addownload/dq;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/dq;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/addownload/dq;->d:Lcom/ss/android/downloadlib/addownload/dq;

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
    sget-object v0, Lcom/ss/android/downloadlib/addownload/dq;->d:Lcom/ss/android/downloadlib/addownload/dq;

    return-object v0
.end method

.method private dq(Lcom/ss/android/downloadlib/addownload/d/dq;I)V
    .locals 5

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->ig()Lcom/ss/android/download/api/config/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->ig()Lcom/ss/android/download/api/config/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/download/api/config/d;->dq()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne v0, p2, :cond_4

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object p2

    iget-wide v0, p1, Lcom/ss/android/downloadlib/addownload/d/dq;->d:J

    invoke-virtual {p2, v0, v1}, Lcom/ss/android/downloadlib/addownload/d/iw;->p(J)Lcom/ss/android/downloadad/api/dq/d;

    move-result-object p2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ttdownloader_type"

    const-string v2, "miui_silent_install"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/ss/android/downloadlib/addownload/d/dq;->p:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ss/android/downloadlib/mn/mp;->s(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "ttdownloader_message"

    if-eqz v1, :cond_3

    :try_start_1
    const-string v1, "miui_silent_install_succeed"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x4

    goto :goto_1

    :cond_3
    const-string v1, "miui_silent_install_failed: has started service"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x5

    goto :goto_1

    :catch_0
    const/4 v1, -0x1

    :goto_1
    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->iw()Lcom/ss/android/socialbase/appdownloader/ox/ia;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2, v1}, Lcom/ss/android/socialbase/appdownloader/ox/ia;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v1

    const-string v2, "embeded_ad"

    const-string v3, "ah_result"

    invoke-virtual {v1, v2, v3, v0, p2}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    :cond_4
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p1, Lcom/ss/android/downloadlib/addownload/d/dq;->p:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/ss/android/downloadlib/mn/mp;->s(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p2

    const-string v0, "delayinstall_installed"

    iget-wide v1, p1, Lcom/ss/android/downloadlib/addownload/d/dq;->d:J

    invoke-virtual {p2, v0, v1, v2}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;J)V

    return-void

    :cond_5
    iget-object p2, p1, Lcom/ss/android/downloadlib/addownload/d/dq;->mn:Ljava/lang/String;

    invoke-static {p2}, Lcom/ss/android/downloadlib/mn/mp;->dq(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p2

    const-string v0, "delayinstall_file_lost"

    iget-wide v1, p1, Lcom/ss/android/downloadlib/addownload/d/dq;->d:J

    invoke-virtual {p2, v0, v1, v2}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;J)V

    return-void

    :cond_6
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/dq/dq;->dq()Lcom/ss/android/downloadlib/addownload/dq/dq;

    move-result-object p2

    iget-object v0, p1, Lcom/ss/android/downloadlib/addownload/d/dq;->p:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/ss/android/downloadlib/addownload/dq/dq;->dq(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p2

    const-string v0, "delayinstall_conflict_with_back_dialog"

    iget-wide v1, p1, Lcom/ss/android/downloadlib/addownload/d/dq;->d:J

    invoke-virtual {p2, v0, v1, v2}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;J)V

    return-void

    :cond_7
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p2

    const-string v0, "delayinstall_install_start"

    iget-wide v1, p1, Lcom/ss/android/downloadlib/addownload/d/dq;->d:J

    invoke-virtual {p2, v0, v1, v2}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;J)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-wide v0, p1, Lcom/ss/android/downloadlib/addownload/d/dq;->dq:J

    long-to-int p1, v0

    invoke-static {p2, p1}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Landroid/content/Context;I)Z

    return-void
.end method


# virtual methods
.method public dq(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ss/android/downloadlib/addownload/d/dq;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, p1}, Lcom/ss/android/downloadlib/addownload/dq;->dq(Lcom/ss/android/downloadlib/addownload/d/dq;I)V

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    new-instance v0, Lcom/ss/android/downloadlib/addownload/d/dq;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    int-to-long v1, v1

    move-wide v3, p2

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/ss/android/downloadlib/addownload/d/dq;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p2

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p2

    const-string p3, "back_miui_silent_install"

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p3

    const/16 v1, 0xc8

    if-nez p3, :cond_2

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->mp()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->q()Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v2, "com.miui.securitycore"

    const-string v3, "com.miui.enterprise.service.EntInstallService"

    invoke-static {p3, v2, v3}, Lcom/ss/android/socialbase/downloader/kk/o;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempCacheData()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    const-string p3, "extra_silent_install_succeed"

    invoke-virtual {p1, p3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/lang/Object;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/dq;->ox:Lcom/ss/android/downloadlib/mn/q;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/4 p3, 0x2

    iput p3, p1, Landroid/os/Message;->arg1:I

    const-string p3, "check_silent_install_interval"

    const v0, 0xea60

    invoke-virtual {p2, p3, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p2

    iget-object p3, p0, Lcom/ss/android/downloadlib/addownload/dq;->ox:Lcom/ss/android/downloadlib/mn/q;

    int-to-long v0, p2

    invoke-virtual {p3, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object p1

    iget-wide p2, v0, Lcom/ss/android/downloadlib/addownload/d/dq;->d:J

    invoke-virtual {p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/d/iw;->p(J)Lcom/ss/android/downloadad/api/dq/d;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p3, "ttdownloader_type"

    const-string v2, "miui_silent_install"

    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "ttdownloader_message"

    const-string v2, "miui_silent_install_failed: has not started service"

    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p3, 0x5

    goto :goto_0

    :catch_0
    const/4 p3, -0x1

    :goto_0
    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->iw()Lcom/ss/android/socialbase/appdownloader/ox/ia;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2, p3}, Lcom/ss/android/socialbase/appdownloader/ox/ia;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p3

    const-string v2, "embeded_ad"

    const-string v3, "ah_result"

    invoke-virtual {p3, v2, v3, p2, p1}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    :cond_2
    invoke-static {}, Lcom/ss/android/downloadlib/mn/s;->ox()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/dq;->p:J

    sub-long/2addr p1, v2

    invoke-static {}, Lcom/ss/android/downloadlib/mn/s;->p()J

    move-result-wide v2

    invoke-static {}, Lcom/ss/android/downloadlib/mn/s;->s()J

    move-result-wide v4

    cmp-long p3, p1, v4

    if-gez p3, :cond_4

    invoke-static {}, Lcom/ss/android/downloadlib/mn/s;->s()J

    move-result-wide v4

    sub-long/2addr v4, p1

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    add-long/2addr p1, v4

    iput-wide p1, p0, Lcom/ss/android/downloadlib/addownload/dq;->p:J

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ss/android/downloadlib/addownload/dq;->p:J

    :goto_1
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/dq;->ox:Lcom/ss/android/downloadlib/mn/q;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

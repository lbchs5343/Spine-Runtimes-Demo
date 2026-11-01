.class public Lcom/ss/android/downloadlib/ia;
.super Ljava/lang/Object;


# static fields
.field private static volatile dq:Lcom/ss/android/downloadlib/ia;


# instance fields
.field private final d:Landroid/os/Handler;

.field private iw:J

.field private final ox:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/downloadlib/addownload/mn;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/downloadlib/addownload/mn;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/ia;->ox:Ljava/util/List;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/ia;->p:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/ia;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/ia;->d:Landroid/os/Handler;

    return-void
.end method

.method private declared-synchronized d(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/ia;->ox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/downloadlib/ia;->ox(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/ia;->ox:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/addownload/mn;

    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/addownload/mn;->d(Landroid/content/Context;)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/mn;->d(ILcom/ss/android/download/api/download/DownloadStatusChangeListener;)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p1

    invoke-interface {p1, p4}, Lcom/ss/android/downloadlib/addownload/mn;->d(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/downloadlib/addownload/mn;->dq()V

    iget-object p1, p0, Lcom/ss/android/downloadlib/ia;->p:Ljava/util/Map;

    invoke-interface {p4}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private d(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;Ljava/lang/String;)V
    .locals 1

    if-nez p4, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/ss/android/downloadlib/addownload/s;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/s;-><init>()V

    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/addownload/mn;->d(Landroid/content/Context;)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/mn;->d(ILcom/ss/android/download/api/download/DownloadStatusChangeListener;)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p1

    invoke-interface {p1, p4}, Lcom/ss/android/downloadlib/addownload/mn;->d(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p1

    invoke-interface {p1, p5}, Lcom/ss/android/downloadlib/addownload/mn;->dq(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/downloadlib/addownload/mn;->dq()V

    iget-object p1, p0, Lcom/ss/android/downloadlib/ia;->p:Ljava/util/Map;

    invoke-interface {p1, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/iw;->dq()Lcom/ss/android/downloadlib/addownload/iw;

    move-result-object p1

    invoke-interface {p4}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p5, p2}, Lcom/ss/android/downloadlib/addownload/iw;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static dq()Lcom/ss/android/downloadlib/ia;
    .locals 2

    sget-object v0, Lcom/ss/android/downloadlib/ia;->dq:Lcom/ss/android/downloadlib/ia;

    if-nez v0, :cond_1

    const-class v0, Lcom/ss/android/downloadlib/ia;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/ia;->dq:Lcom/ss/android/downloadlib/ia;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/downloadlib/ia;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/ia;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/ia;->dq:Lcom/ss/android/downloadlib/ia;

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
    sget-object v0, Lcom/ss/android/downloadlib/ia;->dq:Lcom/ss/android/downloadlib/ia;

    return-object v0
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/ia;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/downloadlib/ia;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private declared-synchronized dq(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/ia;->ox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/ss/android/downloadlib/ia;->d(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, p0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, p0

    :goto_0
    move-object p2, v0

    goto :goto_1

    :cond_0
    move-object v0, p5

    move-object p5, p4

    move-object p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    :try_start_1
    iget-object v1, p1, Lcom/ss/android/downloadlib/ia;->ox:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/downloadlib/addownload/mn;

    invoke-interface {v1, p2}, Lcom/ss/android/downloadlib/addownload/mn;->d(Landroid/content/Context;)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p2

    invoke-interface {p2, p3, p4}, Lcom/ss/android/downloadlib/addownload/mn;->d(ILcom/ss/android/download/api/download/DownloadStatusChangeListener;)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p2

    invoke-interface {p2, p5}, Lcom/ss/android/downloadlib/addownload/mn;->d(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/ss/android/downloadlib/addownload/mn;->dq(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p2

    invoke-interface {p2}, Lcom/ss/android/downloadlib/addownload/mn;->dq()V

    iget-object p2, p1, Lcom/ss/android/downloadlib/ia;->p:Ljava/util/Map;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/iw;->dq()Lcom/ss/android/downloadlib/addownload/iw;

    move-result-object p2

    invoke-interface {p5}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lcom/ss/android/downloadlib/addownload/iw;->dq(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2
.end method

.method private ox()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/downloadlib/ia;->iw:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x493e0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Lcom/ss/android/downloadlib/ia;->iw:J

    iget-object v0, p0, Lcom/ss/android/downloadlib/ia;->ox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ss/android/downloadlib/ia;->p()V

    :cond_1
    :goto_0
    return-void
.end method

.method private ox(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V
    .locals 1

    if-nez p4, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/ss/android/downloadlib/addownload/s;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/s;-><init>()V

    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/addownload/mn;->d(Landroid/content/Context;)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/mn;->d(ILcom/ss/android/download/api/download/DownloadStatusChangeListener;)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p1

    invoke-interface {p1, p4}, Lcom/ss/android/downloadlib/addownload/mn;->d(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/downloadlib/addownload/mn;->dq()V

    iget-object p1, p0, Lcom/ss/android/downloadlib/ia;->p:Ljava/util/Map;

    invoke-interface {p4}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private p()V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/ss/android/downloadlib/ia;->ox:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/downloadlib/addownload/mn;

    invoke-interface {v4}, Lcom/ss/android/downloadlib/addownload/mn;->d()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4}, Lcom/ss/android/downloadlib/addownload/mn;->p()J

    move-result-wide v5

    sub-long v5, v0, v5

    const-wide/32 v7, 0x493e0

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    invoke-interface {v4}, Lcom/ss/android/downloadlib/addownload/mn;->ia()V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/downloadlib/ia;->ox:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public d()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/ia;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/downloadlib/ia;->d:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/ia$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/downloadlib/ia$4;-><init>(Lcom/ss/android/downloadlib/ia;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/s;
    .locals 4

    iget-object v0, p0, Lcom/ss/android/downloadlib/ia;->p:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "filter_download_url_key"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/ss/android/downloadlib/ia;->p:Ljava/util/Map;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/iw;->dq()Lcom/ss/android/downloadlib/addownload/iw;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ss/android/downloadlib/addownload/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/addownload/mn;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/ia;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/addownload/mn;

    :goto_0
    instance-of v0, p1, Lcom/ss/android/downloadlib/addownload/s;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/ss/android/downloadlib/addownload/s;

    return-object p1

    :cond_2
    :goto_1
    return-object v1
.end method

.method public dq(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V
    .locals 9

    if-eqz p4, :cond_c

    invoke-interface {p4}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "filter_download_url_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/iw;->dq()Lcom/ss/android/downloadlib/addownload/iw;

    move-result-object v0

    invoke-interface {p4}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/addownload/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v2, :cond_2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/downloadlib/ia;->p:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/addownload/mn;

    instance-of v1, p4, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    if-eqz v1, :cond_3

    move-object v1, p4

    check-cast v1, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->getTaskKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v8}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->setTaskKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ss/android/downloadlib/ia;->p:Ljava/util/Map;

    invoke-interface {p4}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/addownload/mn;

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/addownload/mn;->d(Landroid/content/Context;)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/mn;->d(ILcom/ss/android/download/api/download/DownloadStatusChangeListener;)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p1

    invoke-interface {p1, p4}, Lcom/ss/android/downloadlib/addownload/mn;->d(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/downloadlib/addownload/mn;->dq()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/ss/android/downloadlib/ia;->ox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v2, :cond_7

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/ss/android/downloadlib/ia;->dq(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;Ljava/lang/String;)V

    return-void

    :cond_5
    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/iw;->dq()Lcom/ss/android/downloadlib/addownload/iw;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/ss/android/downloadlib/addownload/iw;->dq(Lcom/ss/android/download/api/download/DownloadModel;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/ss/android/downloadlib/ia;->d(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V

    return-void

    :cond_6
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/downloadlib/ia;->dq(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;Ljava/lang/String;)V

    instance-of p1, v5, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    if-eqz p1, :cond_c

    move-object p4, v5

    check-cast p4, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    invoke-virtual {p4}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->getTaskKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p4, v6}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->setTaskKey(Ljava/lang/String;)V

    return-void

    :cond_7
    move-object v4, p1

    move v3, p2

    move-object v6, p3

    move-object v5, p4

    invoke-direct {p0, v4, v3, v6, v5}, Lcom/ss/android/downloadlib/ia;->d(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V

    return-void

    :cond_8
    move-object v4, p1

    move v3, p2

    move-object v6, p3

    move-object v5, p4

    if-eqz v2, :cond_a

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    move-object v7, v5

    move v5, v3

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/ss/android/downloadlib/ia;->d(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;Ljava/lang/String;)V

    return-void

    :cond_9
    move-object v2, v4

    move-object v4, v6

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/iw;->dq()Lcom/ss/android/downloadlib/addownload/iw;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/ss/android/downloadlib/addownload/iw;->dq(Lcom/ss/android/download/api/download/DownloadModel;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/downloadlib/ia;->d(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;Ljava/lang/String;)V

    instance-of p1, v5, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    if-eqz p1, :cond_c

    move-object p4, v5

    check-cast p4, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    invoke-virtual {p4}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->getTaskKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p4, v6}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->setTaskKey(Ljava/lang/String;)V

    return-void

    :cond_a
    move-object v2, v4

    move-object v4, v6

    :cond_b
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/ss/android/downloadlib/ia;->ox(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V

    :cond_c
    :goto_1
    return-void
.end method

.method public dq(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadEventConfig;)V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/downloadlib/ia;->d:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/ia$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/downloadlib/ia$1;-><init>(Lcom/ss/android/downloadlib/ia;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadEventConfig;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(Lcom/ss/android/download/api/download/dq/dq;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "fix_listener_oom"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/ia;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/ia;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/downloadlib/ia;->d:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/ia$5;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/ia$5;-><init>(Lcom/ss/android/downloadlib/ia;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/downloadlib/ia;->d:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/ia$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/downloadlib/ia$2;-><init>(Lcom/ss/android/downloadlib/ia;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/downloadlib/ia;->d:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/ia$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/downloadlib/ia$3;-><init>(Lcom/ss/android/downloadlib/ia;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "filter_download_url_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/iw;->dq()Lcom/ss/android/downloadlib/addownload/iw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ss/android/downloadlib/ia;->p:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/downloadlib/addownload/mn;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ss/android/downloadlib/ia;->p:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/downloadlib/addownload/mn;

    :goto_0
    if-eqz v1, :cond_5

    invoke-interface {v1, p2}, Lcom/ss/android/downloadlib/addownload/mn;->dq(I)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/ss/android/downloadlib/ia;->ox:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/ss/android/downloadlib/ia;->p:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/iw;->dq()Lcom/ss/android/downloadlib/addownload/iw;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/iw;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/ss/android/downloadlib/ia;->p:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/ss/android/downloadlib/ia;->ox()V

    :cond_5
    :goto_2
    return-void
.end method

.method public dq(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/ss/android/downloadlib/ia;->dq(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/OnItemClickListener;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V

    return-void
.end method

.method public dq(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/ss/android/downloadlib/ia;->dq(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/OnItemClickListener;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V

    return-void
.end method

.method public dq(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/OnItemClickListener;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "filter_download_url_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/iw;->dq()Lcom/ss/android/downloadlib/addownload/iw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/ss/android/downloadlib/ia;->p:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/addownload/mn;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ss/android/downloadlib/ia;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/addownload/mn;

    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/mn;->dq(J)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p1

    invoke-interface {p1, p5}, Lcom/ss/android/downloadlib/addownload/mn;->d(Lcom/ss/android/download/api/download/DownloadEventConfig;)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p1

    invoke-interface {p1, p6}, Lcom/ss/android/downloadlib/addownload/mn;->d(Lcom/ss/android/download/api/download/DownloadController;)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p1

    invoke-interface {p1, p7}, Lcom/ss/android/downloadlib/addownload/mn;->dq(Lcom/ss/android/download/api/config/OnItemClickListener;)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p1

    invoke-interface {p1, p8}, Lcom/ss/android/downloadlib/addownload/mn;->dq(Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)Lcom/ss/android/downloadlib/addownload/mn;

    move-result-object p1

    invoke-interface {p1, p4}, Lcom/ss/android/downloadlib/addownload/mn;->d(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public dq(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "filter_download_url_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/iw;->dq()Lcom/ss/android/downloadlib/addownload/iw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/ss/android/downloadlib/ia;->p:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/addownload/mn;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ss/android/downloadlib/ia;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/addownload/mn;

    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Lcom/ss/android/downloadlib/addownload/mn;->dq(Z)V

    :cond_3
    :goto_1
    return-void
.end method

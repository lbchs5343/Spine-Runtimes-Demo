.class public Lcom/ss/android/downloadlib/addownload/p;
.super Ljava/lang/Object;


# instance fields
.field private d:Lcom/ss/android/downloadlib/addownload/d/s;

.field private dq:Landroid/os/Handler;

.field private ox:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private p:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/p;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/p;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/p;->dq:Landroid/os/Handler;

    return-void
.end method

.method public static d()J
    .locals 2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->mp()Lcom/ss/android/download/api/config/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->mp()Lcom/ss/android/download/api/config/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/download/api/config/q;->dq()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private d(Lcom/ss/android/downloadad/api/dq/d;Lorg/json/JSONObject;JJ)V
    .locals 1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadad/api/dq/d;->ig(Ljava/lang/String;)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/kk;->dq()Lcom/ss/android/downloadlib/addownload/d/kk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/d/kk;->dq(Lcom/ss/android/downloadad/api/dq/d;)V

    :try_start_0
    const-string v0, "quite_clean_size"

    sub-long/2addr p5, p3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p3

    const-string p4, "cleanspace_download_after_quite_clean"

    invoke-virtual {p3, p4, p2, p1}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/addownload/p;Ljava/util/Map;)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/p;->dq(Ljava/util/Map;)J

    move-result-wide p0

    return-wide p0
.end method

.method private dq(Ljava/util/Map;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "content-length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/addownload/p;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/p;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static dq(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "clean_space_install_params"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static dq(I)V
    .locals 0

    invoke-static {p0}, Lcom/ss/android/downloadlib/mn/s;->iw(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->mp()Lcom/ss/android/download/api/config/q;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->mp()Lcom/ss/android/download/api/config/q;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/android/download/api/config/q;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->mp()Lcom/ss/android/download/api/config/q;

    :cond_1
    :goto_0
    return-void
.end method

.method private dq(ILjava/lang/String;JLcom/ss/android/downloadad/api/dq/d;JLcom/ss/android/downloadlib/addownload/s$dq;)V
    .locals 12

    move-wide v1, p3

    move-object/from16 v8, p8

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/p;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "apk_size"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {p1}, Lcom/ss/android/downloadlib/mn/s;->dq(I)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    long-to-double v0, v1

    mul-double v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    invoke-static {p1}, Lcom/ss/android/downloadlib/mn/s;->d(I)J

    move-result-wide v4

    add-long/2addr v4, v0

    sub-long v4, v4, p6

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/p;->p()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-gez v0, :cond_1

    move-object v1, p0

    move-object/from16 v2, p5

    invoke-direct/range {v1 .. v7}, Lcom/ss/android/downloadlib/addownload/p;->dq(Lcom/ss/android/downloadad/api/dq/d;Lorg/json/JSONObject;JJ)V

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/p;->dq(Lcom/ss/android/downloadad/api/dq/d;)V

    move-wide v10, v4

    move-wide v4, v6

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/p;->p()J

    move-result-wide v6

    cmp-long v0, v6, v10

    if-gez v0, :cond_0

    invoke-virtual {v2, v9}, Lcom/ss/android/downloadad/api/dq/d;->p(Z)V

    invoke-virtual {v2}, Lcom/ss/android/downloadad/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/ox/p;->dq()Lcom/ss/android/downloadlib/addownload/ox/p;

    move-result-object v3

    new-instance v4, Lcom/ss/android/downloadlib/addownload/p$4;

    invoke-direct {v4, p0, v2, v8, v0}, Lcom/ss/android/downloadlib/addownload/p$4;-><init>(Lcom/ss/android/downloadlib/addownload/p;Lcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/addownload/s$dq;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v4}, Lcom/ss/android/downloadlib/addownload/ox/p;->dq(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/ox/s;)V

    move-object v1, p0

    move-object v4, p2

    move-object v3, v2

    move-wide v5, v10

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/downloadlib/addownload/p;->dq(ILcom/ss/android/downloadad/api/dq/d;Ljava/lang/String;J)Z

    move-result p1

    move-object v2, v3

    if-eqz p1, :cond_2

    invoke-virtual {v2, v9}, Lcom/ss/android/downloadad/api/dq/d;->s(Z)V

    goto :goto_1

    :cond_0
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/ss/android/downloadlib/addownload/p;->d(Lcom/ss/android/downloadad/api/dq/d;Lorg/json/JSONObject;JJ)V

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/p;->dq:Landroid/os/Handler;

    new-instance p2, Lcom/ss/android/downloadlib/addownload/p$5;

    invoke-direct {p2, p0, v8}, Lcom/ss/android/downloadlib/addownload/p$5;-><init>(Lcom/ss/android/downloadlib/addownload/p;Lcom/ss/android/downloadlib/addownload/s$dq;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private static dq(Lcom/ss/android/downloadad/api/dq/d;)V
    .locals 6

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/p;->p()J

    move-result-wide v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->mp()Lcom/ss/android/download/api/config/q;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->mp()Lcom/ss/android/download/api/config/q;

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/ox/ox;->dq()V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/ox/ox;->d()V

    invoke-virtual {p0}, Lcom/ss/android/downloadad/api/dq/d;->gh()I

    move-result v2

    invoke-static {v2}, Lcom/ss/android/downloadlib/mn/s;->mn(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/ox/ox;->dq(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/p;->p()J

    move-result-wide v2

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "quite_clean_size"

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    const-string v1, "clean_quite_finish"

    invoke-virtual {v0, v1, v4, p0}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void
.end method

.method private dq(Lcom/ss/android/downloadad/api/dq/d;Lorg/json/JSONObject;JJ)V
    .locals 1

    :try_start_0
    const-string v0, "available_space"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p2, v0, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "apk_download_need_size"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p5, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p3

    const-string p4, "clean_space_no_enough_for_download"

    invoke-virtual {p3, p4, p2, p1}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/addownload/p;ILjava/lang/String;JLcom/ss/android/downloadad/api/dq/d;JLcom/ss/android/downloadlib/addownload/s$dq;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/ss/android/downloadlib/addownload/p;->dq(ILjava/lang/String;JLcom/ss/android/downloadad/api/dq/d;JLcom/ss/android/downloadlib/addownload/s$dq;)V

    return-void
.end method

.method private dq(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/addownload/s$d;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/ss/android/downloadlib/addownload/p$3;

    invoke-direct {p2, p0, p3}, Lcom/ss/android/downloadlib/addownload/p$3;-><init>(Lcom/ss/android/downloadlib/addownload/p;Lcom/ss/android/downloadlib/addownload/s$d;)V

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/network/dq/d;->dq(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/o;)V

    return-void
.end method

.method private dq(ILcom/ss/android/downloadad/api/dq/d;Ljava/lang/String;J)Z
    .locals 8

    invoke-static {p1}, Lcom/ss/android/downloadlib/mn/s;->iw(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->mp()Lcom/ss/android/download/api/config/q;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->mp()Lcom/ss/android/download/api/config/q;

    move-result-object v2

    const/4 v5, 0x1

    move v3, p1

    move-object v4, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/ss/android/download/api/config/q;->dq(ILjava/lang/String;ZJ)Z

    move-result p1

    return p1

    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p3, "show_dialog_result"

    const/4 p4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p3, v0

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p3

    const-string p4, "cleanspace_window_show"

    invoke-virtual {p3, p4, p1, p2}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return v1
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;J)Z
    .locals 6

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/downloadlib/mn/s;->iw(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->mp()Lcom/ss/android/download/api/config/q;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->mp()Lcom/ss/android/download/api/config/q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/download/api/config/q;->dq(ILjava/lang/String;ZJ)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/ox/p;->dq()Lcom/ss/android/downloadlib/addownload/ox/p;

    move-result-object p2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/addownload/p$6;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/p$6;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {p2, v0, v1}, Lcom/ss/android/downloadlib/addownload/ox/p;->dq(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/ox/s;)V

    :cond_1
    return p1

    :cond_2
    return v2
.end method

.method public static synthetic ox()J
    .locals 2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/p;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method private static p()J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/mn/mp;->d(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public dq(IJJLcom/ss/android/downloadlib/addownload/s$dq;)V
    .locals 14

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/p;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez p6, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/ss/android/downloadlib/mn/s;->iw(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/ss/android/downloadlib/mn/s;->s(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object/from16 v7, p6

    goto/16 :goto_1

    :cond_2
    invoke-static {p1}, Lcom/ss/android/downloadlib/mn/s;->ox(I)J

    move-result-wide v9

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/p;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/p;->d:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ss/android/downloadlib/addownload/d/iw;->d(Ljava/lang/String;)Lcom/ss/android/downloadad/api/dq/d;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/ss/android/downloadad/api/dq/d;

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/p;->d:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v4, v3, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    iget-object v5, v3, Lcom/ss/android/downloadlib/addownload/d/s;->ox:Lcom/ss/android/download/api/download/DownloadEventConfig;

    iget-object v3, v3, Lcom/ss/android/downloadlib/addownload/d/s;->p:Lcom/ss/android/download/api/download/DownloadController;

    invoke-direct {v0, v4, v5, v3, v1}, Lcom/ss/android/downloadad/api/dq/d;-><init>(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;I)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(Lcom/ss/android/downloadad/api/dq/d;)V

    :cond_3
    move-object v4, v0

    invoke-virtual {v4, v1}, Lcom/ss/android/downloadad/api/dq/d;->s(Z)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->mp()Lcom/ss/android/download/api/config/q;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->mp()Lcom/ss/android/download/api/config/q;

    invoke-virtual {v4}, Lcom/ss/android/downloadad/api/dq/d;->d()J

    :cond_4
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/ox/p;->dq()Lcom/ss/android/downloadlib/addownload/ox/p;

    move-result-object v0

    invoke-virtual {v4}, Lcom/ss/android/downloadad/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/addownload/ox/p;->dq(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ss/android/downloadlib/mn/s;->p(I)Z

    move-result v11

    const-wide/16 v12, 0x0

    cmp-long v0, p4, v12

    if-lez v0, :cond_5

    move-object v0, p0

    move v1, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, p6

    move-object v5, v4

    move-wide/from16 v3, p4

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/downloadlib/addownload/p;->dq(ILjava/lang/String;JLcom/ss/android/downloadad/api/dq/d;JLcom/ss/android/downloadlib/addownload/s$dq;)V

    move-object/from16 v7, p6

    goto :goto_0

    :cond_5
    if-eqz v11, :cond_6

    new-instance v0, Lcom/ss/android/downloadlib/addownload/p$1;

    move-object v1, p0

    move-wide/from16 v5, p2

    move-object/from16 v7, p6

    move-object v3, v2

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/downloadlib/addownload/p$1;-><init>(Lcom/ss/android/downloadlib/addownload/p;ILjava/lang/String;Lcom/ss/android/downloadad/api/dq/d;JLcom/ss/android/downloadlib/addownload/s$dq;)V

    move-object p1, v0

    move-object v2, v3

    invoke-direct {p0, v2, v4, p1}, Lcom/ss/android/downloadlib/addownload/p;->dq(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/addownload/s$d;)V

    goto :goto_0

    :cond_6
    move-object/from16 v7, p6

    move-wide v9, v12

    :goto_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/p;->dq:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/p$2;

    invoke-direct {v1, p0, v7}, Lcom/ss/android/downloadlib/addownload/p$2;-><init>(Lcom/ss/android/downloadlib/addownload/p;Lcom/ss/android/downloadlib/addownload/s$dq;)V

    invoke-virtual {p1, v1, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :goto_1
    invoke-interface {v7}, Lcom/ss/android/downloadlib/addownload/s$dq;->dq()V

    return-void
.end method

.method public dq(Lcom/ss/android/downloadlib/addownload/d/s;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/p;->d:Lcom/ss/android/downloadlib/addownload/d/s;

    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/p;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public dq()Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/p;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

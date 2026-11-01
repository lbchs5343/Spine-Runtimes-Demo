.class public Lcom/ss/android/downloadlib/addownload/ia;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/mn/q$dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/ia$d;,
        Lcom/ss/android/downloadlib/addownload/ia$dq;
    }
.end annotation


# instance fields
.field private d:J

.field public dq:Lcom/ss/android/downloadlib/addownload/d/s;

.field private ox:Z

.field private p:Lcom/ss/android/downloadlib/addownload/s;

.field private s:Lcom/ss/android/downloadlib/addownload/ia$d;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->ox:Z

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/ia;->p:Lcom/ss/android/downloadlib/addownload/s;

    return-void
.end method

.method public static d(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/download/api/download/dq;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/ss/android/download/api/download/dq;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/ss/android/download/api/download/dq;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v2, v1, Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/ss/android/download/api/download/dq;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/download/api/download/dq;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v2, v1, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/ss/android/download/api/download/dq;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/download/api/download/dq;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private d(Lcom/ss/android/download/api/config/r;)V
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0}, Lcom/ss/android/downloadlib/mn/o;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/ss/android/download/api/config/r;->dq()V

    return-void

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/mn/mp;->dq()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {v0}, Lcom/ss/android/downloadlib/mn/o;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    invoke-static {v1}, Lcom/ss/android/downloadlib/mn/o;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {v1}, Lcom/ss/android/downloadlib/mn/o;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/ss/android/download/api/config/r;->dq()V

    :cond_2
    return-void

    :cond_3
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    :cond_4
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/addownload/ia$2;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/addownload/ia$2;-><init>(Lcom/ss/android/downloadlib/addownload/ia;Lcom/ss/android/download/api/config/r;)V

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/mn/o;->dq([Ljava/lang/String;Lcom/ss/android/downloadlib/mn/o$dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/addownload/ia;)J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->d:J

    return-wide v0
.end method

.method private dq(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/ox;
    .locals 2

    const-string v0, "clickid"

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ss/android/socialbase/downloader/model/ox;

    invoke-direct {v1, v0, p1}, Lcom/ss/android/socialbase/downloader/model/ox;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->r()Lcom/ss/android/download/api/d/dq;

    move-result-object v0

    const-string v1, "parseLogExtra Error"

    invoke-interface {v0, p1, v1}, Lcom/ss/android/download/api/d/dq;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/mn/dq;)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object p1, p1, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getFilePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v2, v2, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v2}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/mn/mp;->dq()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1}, Lcom/ss/android/downloadlib/mn/o;->d(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_1
    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {v1}, Lcom/ss/android/downloadlib/mn/o;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    invoke-static {v1}, Lcom/ss/android/downloadlib/mn/o;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {v1}, Lcom/ss/android/downloadlib/mn/o;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/ia;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_4

    return-object v4

    :cond_4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_6

    :goto_2
    return-object v4

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ob()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->cancel(I)V

    :cond_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x2

    :try_start_1
    const-string v5, "ttdownloader_code"

    if-eqz v1, :cond_8

    const/4 v6, 0x1

    goto :goto_3

    :cond_8
    const/4 v6, 0x2

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v5

    const-string v6, "label_external_permission"

    iget-object v7, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    invoke-virtual {v5, v6, v0, v7}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    :try_start_2
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/ox;->d()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    const/4 v0, 0x0

    :goto_5
    invoke-static {p1}, Lcom/ss/android/downloadlib/mn/s;->dq(Lcom/ss/android/socialbase/downloader/mn/dq;)I

    move-result p1

    if-eqz p1, :cond_d

    const/4 v5, 0x4

    if-eq p1, v5, :cond_b

    if-nez v1, :cond_9

    if-ne p1, v4, :cond_9

    goto :goto_6

    :cond_9
    const/4 v4, 0x3

    if-eq p1, v4, :cond_a

    if-nez v1, :cond_d

    if-ne p1, v2, :cond_d

    :cond_a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_7

    :cond_b
    :goto_6
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_c
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    goto :goto_7

    :cond_d
    move-object v3, v0

    :goto_7
    return-object v3
.end method

.method public static dq(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/download/api/download/DownloadStatusChangeListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v2, v1, Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v2, v1, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private iw()Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v0}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/d/s;->p:Lcom/ss/android/download/api/download/DownloadController;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->getLinkMode()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/kk;->dq(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private iw(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private ox()Z
    .locals 1

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/ia;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/ia;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private p()Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private s()Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/d/s;->p:Lcom/ss/android/download/api/download/DownloadController;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->isAddToDownloadManage()Z

    move-result v0

    return v0
.end method

.method private s(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v0}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/ia;->iw(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->s:Lcom/ss/android/downloadlib/addownload/ia$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/addownload/ia$d;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/ia;->s:Lcom/ss/android/downloadlib/addownload/ia$d;

    :cond_0
    return-void
.end method

.method public dq(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;)I
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->getHeaders()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "enable_send_click_id_in_apk"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v3, v3, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v3}, Lcom/ss/android/download/api/download/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v3, v3, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v3}, Lcom/ss/android/download/api/download/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/ox;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_2

    new-instance v4, Lcom/ss/android/socialbase/downloader/model/ox;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v6, v3}, Lcom/ss/android/socialbase/downloader/model/ox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v3, v3, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v3}, Lcom/ss/android/download/api/download/DownloadModel;->getNotificationJumpUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v4, v4, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v4}, Lcom/ss/android/download/api/download/DownloadModel;->isShowToast()Z

    move-result v4

    iget-object v6, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v6, v6, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v6}, Lcom/ss/android/download/api/download/DownloadModel;->getModelType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v3, v4, v6}, Lcom/ss/android/downloadlib/mn/p;->dq(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v3, v3, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v3}, Lcom/ss/android/downloadlib/mn/s;->d(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v4, v4, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v4}, Lcom/ss/android/downloadlib/mn/s;->dq(Lcom/ss/android/download/api/download/DownloadModel;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v6, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v6, v6, Lcom/ss/android/downloadlib/addownload/d/s;->p:Lcom/ss/android/download/api/download/DownloadController;

    invoke-interface {v6}, Lcom/ss/android/download/api/download/DownloadController;->enableAH()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v4}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const-string v7, "ah_plans"

    invoke-static {v4, v7, v6}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v6, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v6, v6, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v6}, Lcom/ss/android/download/api/download/DownloadModel;->getExecutorGroup()I

    move-result v6

    iget-object v7, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v7, v7, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v7}, Lcom/ss/android/download/api/download/DownloadModel;->isAd()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v7, v7, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v7}, Lcom/ss/android/downloadlib/addownload/kk;->d(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    const/4 v6, 0x4

    :cond_6
    invoke-direct {p0, v3}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Lcom/ss/android/socialbase/downloader/mn/dq;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v8, v8, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v8}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v9, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v9, v9, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v9}, Lcom/ss/android/download/api/download/DownloadModel;->getModelType()I

    move-result v9

    const/4 v10, 0x3

    if-ne v10, v9, :cond_7

    invoke-virtual {v8, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstDownload(Z)V

    :cond_7
    new-instance v8, Lcom/ss/android/socialbase/appdownloader/iw;

    iget-object v9, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v9, v9, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v9}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p1, v9}, Lcom/ss/android/socialbase/appdownloader/iw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object p1, p1, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getBackupUrls()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/ss/android/socialbase/appdownloader/iw;->d(Ljava/util/List;)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    iget-object v8, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v8, v8, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v8}, Lcom/ss/android/download/api/download/DownloadModel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/ss/android/socialbase/appdownloader/iw;->dq(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/iw;->s(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/appdownloader/iw;->dq(Ljava/util/List;)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->isShowNotification()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/iw;->dq(Z)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->isNeedWifi()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/iw;->ox(Z)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/iw;->d(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/ss/android/socialbase/appdownloader/iw;->ox(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->getAppIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/iw;->no(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/iw;->ia(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->getSdkMonitorScene()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/iw;->o(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->getExpectFileLength()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/ss/android/socialbase/appdownloader/iw;->dq(J)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/iw;->dq(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadModel;->needIndependentProcess()Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "need_independent_process"

    invoke-virtual {v3, p2, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v5, :cond_8

    goto :goto_1

    :cond_8
    const/4 p2, 0x0

    goto :goto_2

    :cond_9
    :goto_1
    const/4 p2, 0x1

    :goto_2
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/iw;->ig(Z)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadFileUriProvider()Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/iw;->dq(Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadModel;->autoInstallWithoutNotification()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/iw;->d(Z)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/iw;->mn(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/iw;->p(I)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/iw;->s(I)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/ss/android/socialbase/appdownloader/iw;->dq(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/ss/android/socialbase/appdownloader/iw;->kk(Z)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/ss/android/socialbase/appdownloader/iw;->o(Z)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    const-string p2, "retry_count"

    const/4 v1, 0x5

    invoke-virtual {v3, p2, v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/iw;->d(I)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    const-string p2, "backup_url_retry_count"

    invoke-virtual {v3, p2, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/iw;->ox(I)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/ss/android/socialbase/appdownloader/iw;->o(Z)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    const-string p2, "need_head_connection"

    invoke-virtual {v3, p2, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v5, :cond_a

    const/4 p2, 0x1

    goto :goto_3

    :cond_a
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/iw;->mp(Z)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    const-string p2, "need_https_to_http_retry"

    invoke-virtual {v3, p2, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v5, :cond_b

    const/4 p2, 0x1

    goto :goto_4

    :cond_b
    const/4 p2, 0x0

    :goto_4
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/iw;->p(Z)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    const-string p2, "need_chunk_downgrade_retry"

    invoke-virtual {v3, p2, v5}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v5, :cond_c

    const/4 p2, 0x1

    goto :goto_5

    :cond_c
    const/4 p2, 0x0

    :goto_5
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/iw;->ia(Z)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    const-string p2, "need_retry_delay"

    invoke-virtual {v3, p2, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v5, :cond_d

    const/4 p2, 0x1

    goto :goto_6

    :cond_d
    const/4 p2, 0x0

    :goto_6
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/iw;->mn(Z)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    const-string p2, "retry_delay_time_array"

    invoke-virtual {v3, p2}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/iw;->kk(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    const-string p2, "need_reuse_runnable"

    invoke-virtual {v3, p2, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v5, :cond_e

    const/4 p2, 0x1

    goto :goto_7

    :cond_e
    const/4 p2, 0x0

    :goto_7
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/iw;->no(Z)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/ss/android/socialbase/appdownloader/iw;->iw(I)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadModel;->isAutoInstall()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/iw;->f(Z)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadModel;->distinctDir()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/iw;->jy(Z)Lcom/ss/android/socialbase/appdownloader/iw;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadModel;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadModel;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/iw;->iw(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;

    goto :goto_8

    :cond_f
    const-string p2, "application/vnd.android.package-archive"

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/iw;->iw(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;

    :goto_8
    const-string p2, "notification_opt_2"

    invoke-virtual {v3, p2, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v5, :cond_10

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/appdownloader/iw;->dq(Z)Lcom/ss/android/socialbase/appdownloader/iw;

    invoke-virtual {p1, v5}, Lcom/ss/android/socialbase/appdownloader/iw;->d(Z)Lcom/ss/android/socialbase/appdownloader/iw;

    :cond_10
    const-string p2, "clear_space_use_disk_handler"

    invoke-virtual {v3, p2, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v5, :cond_11

    new-instance p2, Lcom/ss/android/downloadlib/addownload/ox/dq;

    invoke-direct {p2}, Lcom/ss/android/downloadlib/addownload/ox/dq;-><init>()V

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/iw;->dq(Lcom/ss/android/socialbase/downloader/depend/cd;)Lcom/ss/android/socialbase/appdownloader/iw;

    goto :goto_9

    :cond_11
    const/4 p2, 0x0

    :goto_9
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    instance-of v1, v0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    if-eqz v1, :cond_12

    check-cast v0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    invoke-virtual {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->getTaskKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    check-cast v0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    invoke-virtual {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->getTaskKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/appdownloader/iw;->p(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;

    :cond_12
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/ia;->ox()Z

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/ss/android/downloadlib/addownload/kk;->dq(Lcom/ss/android/downloadlib/addownload/d/s;ZLcom/ss/android/socialbase/appdownloader/iw;)I

    move-result p1

    if-eqz p2, :cond_13

    invoke-virtual {p2, p1}, Lcom/ss/android/downloadlib/addownload/ox/dq;->dq(I)V

    :cond_13
    return p1
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->s:Lcom/ss/android/downloadlib/addownload/ia$d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/downloadlib/addownload/ia$3;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/addownload/ia$3;-><init>(Lcom/ss/android/downloadlib/addownload/ia;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->s:Lcom/ss/android/downloadlib/addownload/ia$d;

    :cond_0
    return-void
.end method

.method public dq(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ss/android/downloadlib/addownload/ia;->d:J

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/d/iw;->s(J)Lcom/ss/android/downloadlib/addownload/d/s;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/d/s;->wp()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object p1

    const-string p2, "setAdId ModelBox notValid"

    invoke-virtual {p1, p2}, Lcom/ss/android/downloadlib/s/ox;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public dq(Landroid/os/Message;Lcom/ss/android/download/api/model/DownloadShortInfo;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "Lcom/ss/android/download/api/model/DownloadShortInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_e

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    const/4 v5, 0x6

    if-eq p1, v5, :cond_2

    if-ne p1, v3, :cond_2

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getIsFirstDownload()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/ia;->dq()Lcom/ss/android/downloadlib/ia;

    move-result-object p1

    iget-object v5, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v6, v5, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    iget-object v7, v5, Lcom/ss/android/downloadlib/addownload/d/s;->p:Lcom/ss/android/download/api/download/DownloadController;

    iget-object v5, v5, Lcom/ss/android/downloadlib/addownload/d/s;->ox:Lcom/ss/android/download/api/download/DownloadEventConfig;

    invoke-virtual {p1, v6, v7, v5}, Lcom/ss/android/downloadlib/ia;->dq(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadEventConfig;)V

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstDownload(Z)V

    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/p/dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    :cond_2
    invoke-virtual {p2, v0}, Lcom/ss/android/download/api/model/DownloadShortInfo;->updateFromNewDownloadInfo(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-static {p2}, Lcom/ss/android/downloadlib/addownload/o;->dq(Lcom/ss/android/download/api/model/DownloadShortInfo;)Lcom/ss/android/download/api/model/DownloadShortInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(I)I

    move-result p1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v7

    const-wide/16 v10, 0x64

    mul-long v7, v7, v10

    div-long/2addr v7, v5

    long-to-int v2, v7

    :cond_3
    if-gtz v9, :cond_4

    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v5

    const-string v6, "fix_click_start"

    invoke-virtual {v5, v6}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/ss/android/downloadlib/addownload/ia;->s:Lcom/ss/android/downloadlib/addownload/ia$d;

    if-eqz v5, :cond_5

    invoke-interface {v5, v0}, Lcom/ss/android/downloadlib/addownload/ia$d;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/ss/android/downloadlib/addownload/ia;->s:Lcom/ss/android/downloadlib/addownload/ia$d;

    :cond_5
    invoke-static {p3}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    if-eq p1, v4, :cond_c

    if-eq p1, v3, :cond_b

    if-eq p1, v1, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v7

    const/4 v8, -0x4

    if-ne v7, v8, :cond_8

    invoke-interface {v6}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onIdle()V

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_9

    invoke-interface {v6, p2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onDownloadFailed(Lcom/ss/android/download/api/model/DownloadShortInfo;)V

    goto :goto_0

    :cond_9
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v7

    const/4 v8, -0x3

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v7, v7, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v7}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6, p2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onInstalled(Lcom/ss/android/download/api/model/DownloadShortInfo;)V

    goto :goto_0

    :cond_a
    invoke-interface {v6, p2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onDownloadFinished(Lcom/ss/android/download/api/model/DownloadShortInfo;)V

    goto :goto_0

    :cond_b
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v7

    invoke-static {v7, v2}, Lcom/ss/android/downloadlib/addownload/o;->dq(II)I

    move-result v7

    invoke-interface {v6, p2, v7}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onDownloadPaused(Lcom/ss/android/download/api/model/DownloadShortInfo;I)V

    goto :goto_0

    :cond_c
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v7

    const/16 v8, 0xb

    if-eq v7, v8, :cond_d

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v7

    invoke-static {v7, v2}, Lcom/ss/android/downloadlib/addownload/o;->dq(II)I

    move-result v7

    invoke-interface {v6, p2, v7}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onDownloadActive(Lcom/ss/android/download/api/model/DownloadShortInfo;I)V

    goto :goto_0

    :cond_d
    invoke-static {p3}, Lcom/ss/android/downloadlib/addownload/ia;->d(Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_e
    :goto_2
    return-void
.end method

.method public dq(Lcom/ss/android/download/api/config/r;)V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/ss/android/download/api/config/r;->dq()V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/ss/android/download/api/config/r;->dq()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_1
    new-instance v0, Lcom/ss/android/downloadlib/addownload/ia$1;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/downloadlib/addownload/ia$1;-><init>(Lcom/ss/android/downloadlib/addownload/ia;Lcom/ss/android/download/api/config/r;)V

    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/addownload/ia;->d(Lcom/ss/android/download/api/config/r;)V

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->ox:Z

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/ia;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/download/api/model/DownloadShortInfo;Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            "Lcom/ss/android/download/api/model/DownloadShortInfo;",
            "Ljava/util/List<",
            "Lcom/ss/android/download/api/download/DownloadStatusChangeListener;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p1, :cond_7

    if-nez p2, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    mul-long v1, v1, v3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    div-long/2addr v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v2, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    invoke-virtual {p2, p1}, Lcom/ss/android/download/api/model/DownloadShortInfo;->updateFromNewDownloadInfo(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-static {p2}, Lcom/ss/android/downloadlib/addownload/o;->dq(Lcom/ss/android/download/api/model/DownloadShortInfo;)Lcom/ss/android/download/api/model/DownloadShortInfo;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    instance-of v2, v1, Lcom/ss/android/download/api/download/dq;

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2, v0}, Lcom/ss/android/downloadlib/addownload/o;->dq(II)I

    move-result v2

    invoke-interface {v1, p2, v2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onDownloadActive(Lcom/ss/android/download/api/model/DownloadShortInfo;I)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2, v0}, Lcom/ss/android/downloadlib/addownload/o;->dq(II)I

    move-result v2

    invoke-interface {v1, p2, v2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onDownloadActive(Lcom/ss/android/download/api/model/DownloadShortInfo;I)V

    goto :goto_2

    :pswitch_3
    invoke-interface {v1, p2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onDownloadFailed(Lcom/ss/android/download/api/model/DownloadShortInfo;)V

    goto :goto_2

    :pswitch_4
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2, v0}, Lcom/ss/android/downloadlib/addownload/o;->dq(II)I

    move-result v2

    invoke-interface {v1, p2, v2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onDownloadPaused(Lcom/ss/android/download/api/model/DownloadShortInfo;I)V

    goto :goto_2

    :pswitch_5
    if-eqz p4, :cond_5

    invoke-interface {v1, p2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onInstalled(Lcom/ss/android/download/api/model/DownloadShortInfo;)V

    goto :goto_2

    :cond_5
    invoke-interface {v1, p2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onDownloadFinished(Lcom/ss/android/download/api/model/DownloadShortInfo;)V

    goto :goto_2

    :pswitch_6
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v2, v2, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v2}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, -0x3

    iput v2, p2, Lcom/ss/android/download/api/model/DownloadShortInfo;->status:I

    invoke-interface {v1, p2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onInstalled(Lcom/ss/android/download/api/model/DownloadShortInfo;)V

    goto :goto_2

    :cond_6
    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onIdle()V

    goto :goto_2

    :cond_7
    :goto_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onIdle()V

    goto :goto_4

    :cond_8
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V
    .locals 5

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/kk;->dq(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/ss/android/downloadlib/p/ox;->dq()Lcom/ss/android/downloadlib/p/ox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/p/ox;->ox()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, -0x3

    if-ne v0, v1, :cond_4

    :cond_2
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v1

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/ia;->d:J

    invoke-virtual {v1, v3, v4, v2}, Lcom/ss/android/downloadlib/p/dq;->dq(JI)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v1

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/ia;->d:J

    invoke-virtual {v1, v3, v4, v2}, Lcom/ss/android/downloadlib/p/dq;->dq(JI)V

    :cond_4
    :goto_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p2

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->d:J

    const/4 v2, 0x3

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/ss/android/downloadlib/p/dq;->dq(JILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void

    :pswitch_2
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/ia;->d:J

    const/4 v1, 0x4

    invoke-virtual {v0, v3, v4, v1, p1}, Lcom/ss/android/downloadlib/p/dq;->dq(JILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/ss/android/downloadlib/p/ox;->dq()Lcom/ss/android/downloadlib/p/ox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/p/ox;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/ss/android/downloadlib/p/ox;->dq()Lcom/ss/android/downloadlib/p/ox;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->d:J

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/ss/android/downloadlib/p/ox;->d(JLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->d:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/p/dq;->dq(JI)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v0}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object p1

    const-string p2, "SUCCESSED isInstalledApp"

    invoke-virtual {p1, p2}, Lcom/ss/android/downloadlib/s/ox;->d(Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/ia;->d:J

    const/4 v1, 0x5

    invoke-virtual {v0, v3, v4, v1, p1}, Lcom/ss/android/downloadlib/p/dq;->dq(JILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/ss/android/downloadlib/p/ox;->dq()Lcom/ss/android/downloadlib/p/ox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/p/ox;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/ss/android/downloadlib/p/ox;->dq()Lcom/ss/android/downloadlib/p/ox;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->d:J

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/ss/android/downloadlib/p/ox;->d(JLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->d:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/p/dq;->dq(JI)V

    return-void

    :pswitch_4
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/ia;->dq()V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object p2

    new-instance v0, Lcom/ss/android/downloadad/api/dq/d;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v2, v1, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    iget-object v3, v1, Lcom/ss/android/downloadlib/addownload/d/s;->ox:Lcom/ss/android/download/api/download/DownloadEventConfig;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/d/s;->p:Lcom/ss/android/download/api/download/DownloadController;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/ss/android/downloadad/api/dq/d;-><init>(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;I)V

    invoke-virtual {p2, v0}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(Lcom/ss/android/downloadad/api/dq/d;)V

    :cond_6
    :goto_2
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

.method public dq(I)Z
    .locals 4

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/d/s;->p:Lcom/ss/android/download/api/download/DownloadController;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->getDownloadMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/d/s;->p:Lcom/ss/android/download/api/download/DownloadController;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->getDownloadMode()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    if-ne p1, v1, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "disable_lp_if_market"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    return v3
.end method

.method public dq(ILcom/ss/android/download/api/download/DownloadModel;)Z
    .locals 1

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/ia;->dq(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dq(Landroid/content/Context;IZ)Z
    .locals 3

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object p1, p1, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {p1}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-wide p2, p2, Lcom/ss/android/downloadlib/addownload/d/s;->dq:J

    invoke-virtual {p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/d/iw;->p(J)Lcom/ss/android/downloadad/api/dq/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/d;->dq()Lcom/ss/android/socialbase/downloader/notification/d;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->gh()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/notification/d;->iw(I)V

    :cond_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    invoke-static {p1}, Lcom/ss/android/downloadlib/d/dq;->dq(Lcom/ss/android/downloadlib/addownload/d/s;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/ss/android/downloadlib/addownload/ia;->dq(I)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object p1, p1, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "disable_market"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_4

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    invoke-static {p1, p2}, Lcom/ss/android/downloadlib/d/dq;->dq(Lcom/ss/android/downloadlib/addownload/d/s;I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/ia;->p:Lcom/ss/android/downloadlib/addownload/s;

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/s;->kk()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/ia;->p:Lcom/ss/android/downloadlib/addownload/s;

    invoke-virtual {p1, v1}, Lcom/ss/android/downloadlib/addownload/s;->p(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    if-eqz p3, :cond_5

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object p1, p1, Lcom/ss/android/downloadlib/addownload/d/s;->p:Lcom/ss/android/download/api/download/DownloadController;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadController;->getDownloadMode()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/ia;->p:Lcom/ss/android/downloadlib/addownload/s;

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/s;->s()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/ia;->p:Lcom/ss/android/downloadlib/addownload/s;

    invoke-virtual {p1, v1}, Lcom/ss/android/downloadlib/addownload/s;->ox(Z)V

    return v1

    :cond_5
    return v0
.end method

.method public dq(Z)Z
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object p1, p1, Lcom/ss/android/downloadlib/addownload/d/s;->p:Lcom/ss/android/download/api/download/DownloadController;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadController;->getDownloadMode()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ox(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/kk;->dq(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->ox:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/downloadlib/mn/mp;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v1

    const-string v2, "file_status"

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    invoke-virtual {v1, v2, p1, v3}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;ILcom/ss/android/downloadlib/addownload/d/s;)V

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/ia;->ox:Z

    :cond_1
    return-void
.end method

.method public p(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 1

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/ia;->iw()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/ia;->s(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

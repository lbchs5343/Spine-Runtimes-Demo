.class Lcom/ss/android/downloadlib/dq$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/d/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lorg/json/JSONObject;

.field final synthetic dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field final synthetic ox:Lcom/ss/android/downloadlib/dq;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/dq;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/dq$4;->ox:Lcom/ss/android/downloadlib/dq;

    iput-object p2, p0, Lcom/ss/android/downloadlib/dq$4;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iput-object p3, p0, Lcom/ss/android/downloadlib/dq$4;->d:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Z)V
    .locals 4

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/ss/android/downloadlib/dq$4;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempCacheData()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v2, "backup"

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/ss/android/downloadlib/dq$4;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempCacheData()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(Landroid/content/Context;Landroid/content/Intent;)I

    iget-object v0, p0, Lcom/ss/android/downloadlib/dq$4;->d:Lorg/json/JSONObject;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/dq$4;->d:Lorg/json/JSONObject;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/dq$4;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/api/dq/d;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v1

    if-eqz p1, :cond_2

    const-string v2, "installer_delay_success"

    goto :goto_1

    :cond_2
    const-string v2, "installer_delay_failed"

    :goto_1
    iget-object v3, p0, Lcom/ss/android/downloadlib/dq$4;->d:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, v0}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object v0

    const-string v1, "ah nativeModel=null"

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/s/ox;->d(Ljava/lang/String;)V

    :goto_2
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->i()Lcom/ss/android/download/api/config/gh;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    :cond_4
    return-void
.end method

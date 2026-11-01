.class Lcom/ss/android/downloadlib/addownload/s$ox;
.super Lcom/bytedance/sdk/component/o/p/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/addownload/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ox"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/o/p/d<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/addownload/s;


# direct methods
.method private constructor <init>(Lcom/ss/android/downloadlib/addownload/s;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/o/p/d;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/android/downloadlib/addownload/s;Lcom/ss/android/downloadlib/addownload/s$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/s$ox;-><init>(Lcom/ss/android/downloadlib/addownload/s;)V

    return-void
.end method


# virtual methods
.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/s$ox;->dq([Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public varargs dq([Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object v1, p1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    array-length v1, p1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_1

    const/4 v1, 0x2

    aget-object v3, p1, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v1, p1, v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    aget-object p1, p1, v2

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/s;->ia(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/s;->ia(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/download/api/download/DownloadModel;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/s;->ia(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/download/api/download/DownloadModel;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/s;->ia(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/download/api/download/DownloadModel;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object p1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    return-object v0
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/s;->ia(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/s;->ia(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/s;->ia(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->getVersionCode()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/s;->ia(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/download/api/download/DownloadModel;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/mn/mp;->dq(Ljava/lang/String;ILjava/lang/String;)Lcom/ss/android/downloadlib/addownload/d/ox;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/ia;->dq()Lcom/ss/android/downloadlib/addownload/d/ia;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/s;->ia(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/download/api/download/DownloadModel;->getVersionCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/d/ox;->d()I

    move-result v3

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/api/dq/d;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/ss/android/downloadlib/addownload/d/ia;->dq(IILcom/ss/android/downloadad/api/dq/d;)V

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/d/ox;->dq()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->isDownloadSuccessAndFileNotExist(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->removeTaskMainListener(I)V

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v3}, Lcom/ss/android/downloadlib/addownload/s;->mn(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v3}, Lcom/ss/android/downloadlib/addownload/s;->mn(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v3

    const/4 v4, -0x4

    if-ne v3, v4, :cond_2

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {p1, v2}, Lcom/ss/android/downloadlib/addownload/s;->dq(Lcom/ss/android/downloadlib/addownload/s;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v2, p1}, Lcom/ss/android/downloadlib/addownload/s;->dq(Lcom/ss/android/downloadlib/addownload/s;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/s;->kk(Lcom/ss/android/downloadlib/addownload/s;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/s;->mn(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v3}, Lcom/ss/android/downloadlib/addownload/s;->o(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->setMainThreadListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/s;->mn(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/s;->o(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->setMainThreadListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)V

    :goto_1
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/s;->d(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/downloadlib/addownload/ia;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/s;->mn(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/s;->s(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/download/api/model/DownloadShortInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v3}, Lcom/ss/android/downloadlib/addownload/s;->p(Lcom/ss/android/downloadlib/addownload/s;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/download/api/model/DownloadShortInfo;Ljava/util/List;Z)V

    goto/16 :goto_4

    :cond_4
    if-eqz p1, :cond_5

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->isDownloadSuccessAndFileNotExist(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/d;->dq()Lcom/ss/android/socialbase/downloader/notification/d;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/ss/android/socialbase/downloader/notification/d;->iw(I)V

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {p1, v2}, Lcom/ss/android/downloadlib/addownload/s;->dq(Lcom/ss/android/downloadlib/addownload/s;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    :cond_5
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/s;->mn(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v3}, Lcom/ss/android/downloadlib/addownload/s;->mn(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->removeTaskMainListener(I)V

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/s;->kk(Lcom/ss/android/downloadlib/addownload/s;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/s;->dq(Lcom/ss/android/downloadlib/addownload/s;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v3}, Lcom/ss/android/downloadlib/addownload/s;->mn(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v4}, Lcom/ss/android/downloadlib/addownload/s;->o(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v4

    invoke-virtual {p1, v3, v4, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->setMainThreadListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/s;->dq(Lcom/ss/android/downloadlib/addownload/s;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/s;->mn(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v3}, Lcom/ss/android/downloadlib/addownload/s;->o(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->setMainThreadListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)V

    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    new-instance v1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/s;->ia(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->dq()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ss/android/downloadlib/addownload/s;->dq(Lcom/ss/android/downloadlib/addownload/s;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/s;->mn(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    const/4 v1, -0x3

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/s;->d(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/downloadlib/addownload/ia;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/s;->mn(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/s;->s(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/download/api/model/DownloadShortInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v3}, Lcom/ss/android/downloadlib/addownload/s;->p(Lcom/ss/android/downloadlib/addownload/s;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/download/api/model/DownloadShortInfo;Ljava/util/List;Z)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/s;->p(Lcom/ss/android/downloadlib/addownload/s;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onIdle()V

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {p1, v2}, Lcom/ss/android/downloadlib/addownload/s;->dq(Lcom/ss/android/downloadlib/addownload/s;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    :goto_4
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/s;->d(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/downloadlib/addownload/ia;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s$ox;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/s;->mn(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/ia;->ox(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_6
    return-void
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/s$ox;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void
.end method

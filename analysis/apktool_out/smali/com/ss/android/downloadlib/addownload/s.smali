.class public Lcom/ss/android/downloadlib/addownload/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/mn;
.implements Lcom/ss/android/downloadlib/mn/q$dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/s$d;,
        Lcom/ss/android/downloadlib/addownload/s$dq;,
        Lcom/ss/android/downloadlib/addownload/s$ox;
    }
.end annotation


# static fields
.field private static final dq:Ljava/lang/String; = "s"


# instance fields
.field private cd:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ss/android/download/api/config/OnItemClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/ss/android/downloadlib/mn/q;

.field private f:Lcom/ss/android/download/api/download/DownloadEventConfig;

.field private fw:Lcom/ss/android/download/api/download/DownloadController;

.field private gh:Z

.field private i:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ss/android/download/api/config/IDownloadButtonClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field private ig:J

.field private final iw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private jy:Lcom/ss/android/download/api/download/DownloadModel;

.field private kk:Lcom/ss/android/downloadlib/addownload/s$ox;

.field private mn:Lcom/ss/android/download/api/model/DownloadShortInfo;

.field private mp:Ljava/lang/String;

.field private no:Z

.field private final o:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

.field private ox:Lcom/ss/android/downloadlib/addownload/ia;

.field private p:Lcom/ss/android/downloadlib/addownload/p;

.field private q:J

.field private final r:Z

.field private s:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ss/android/downloadlib/mn/q;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/downloadlib/mn/q;-><init>(Landroid/os/Looper;Lcom/ss/android/downloadlib/mn/q$dq;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->d:Lcom/ss/android/downloadlib/mn/q;

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/s;->iw:Ljava/util/Map;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/ia$dq;

    invoke-direct {v1, v0}, Lcom/ss/android/downloadlib/addownload/ia$dq;-><init>(Lcom/ss/android/downloadlib/mn/q;)V

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/s;->o:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/s;->f:Lcom/ss/android/download/api/download/DownloadEventConfig;

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/s;->fw:Lcom/ss/android/download/api/download/DownloadController;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/ia;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/ia;-><init>(Lcom/ss/android/downloadlib/addownload/s;)V

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/s;->ox:Lcom/ss/android/downloadlib/addownload/ia;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/p;

    invoke-direct {v1, v0}, Lcom/ss/android/downloadlib/addownload/p;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/s;->p:Lcom/ss/android/downloadlib/addownload/p;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "ttdownloader_callback_twice"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/s;->r:Z

    return-void
.end method

.method public static synthetic d(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/downloadlib/addownload/ia;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/s;->ox:Lcom/ss/android/downloadlib/addownload/ia;

    return-object p0
.end method

.method public static synthetic d(Lcom/ss/android/downloadlib/addownload/s;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/s;->ia(Z)V

    return-void
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/addownload/s;)Landroid/content/Context;
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/addownload/s;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    return-object p1
.end method

.method private dq(IILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p3

    const-string v0, "fix_click_start"

    invoke-virtual {p3, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, -0x3

    if-eq p2, p3, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/p;->dq()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->s(I)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/ss/android/downloadlib/addownload/s;->dq(ZZ)V

    return-void

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object p3

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Landroid/content/Context;II)V

    return-void

    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object p3

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Landroid/content/Context;II)V

    return-void
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/addownload/s;IILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/s;->dq(IILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/addownload/s;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/s;->mn(Z)V

    return-void
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->d:Lcom/ss/android/downloadlib/mn/q;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->kk:Lcom/ss/android/downloadlib/addownload/s$ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->kk:Lcom/ss/android/downloadlib/addownload/s$ox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/ss/android/downloadlib/addownload/s$ox;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ss/android/downloadlib/addownload/s$ox;-><init>(Lcom/ss/android/downloadlib/addownload/s;Lcom/ss/android/downloadlib/addownload/s$1;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->kk:Lcom/ss/android/downloadlib/addownload/s$ox;

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->mp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->kk:Lcom/ss/android/downloadlib/addownload/s$ox;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v2}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s;->mp:Ljava/lang/String;

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/mn/d;->dq(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->kk:Lcom/ss/android/downloadlib/addownload/s$ox;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v2}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/mn/d;->dq(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method private fw()Lcom/ss/android/download/api/model/DownloadShortInfo;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->mn:Lcom/ss/android/download/api/model/DownloadShortInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/download/api/model/DownloadShortInfo;

    invoke-direct {v0}, Lcom/ss/android/download/api/model/DownloadShortInfo;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->mn:Lcom/ss/android/download/api/model/DownloadShortInfo;

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->mn:Lcom/ss/android/download/api/model/DownloadShortInfo;

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->s:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ia(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/download/api/download/DownloadModel;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    return-object p0
.end method

.method private ia(Z)V
    .locals 8

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->iw:Ljava/util/Map;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->mp()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onDownloadStart(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadController;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ox:Lcom/ss/android/downloadlib/addownload/ia;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s;->o:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;)I

    move-result v0

    sget-object v1, Lcom/ss/android/downloadlib/addownload/s;->dq:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "beginDown id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/ss/android/downloadlib/mn/no;->dq(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v2

    const-string v4, "fix_click_start"

    invoke-virtual {v2, v4}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->ox:Lcom/ss/android/downloadlib/addownload/ia;

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->ox:Lcom/ss/android/downloadlib/addownload/ia;

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/ia;->dq()V

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v2}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->dq()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/s;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p1

    iget-wide v4, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/4 v6, 0x2

    const-string v7, "start download failed, id=0"

    invoke-direct {v2, v6, v7}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v4, v5, v2}, Lcom/ss/android/downloadlib/p/dq;->dq(JLcom/ss/android/socialbase/downloader/exception/BaseException;)V

    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object p1

    const-string v2, "beginDown"

    invoke-virtual {p1, v2}, Lcom/ss/android/downloadlib/s/ox;->d(Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->ox:Lcom/ss/android/downloadlib/addownload/ia;

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/s;->ox()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "beginDown IC id:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v3}, Lcom/ss/android/downloadlib/mn/no;->dq(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->no()V

    :cond_5
    return-void
.end method

.method private ig()Lcom/ss/android/download/api/download/DownloadEventConfig;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->f:Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/download/api/download/ox$dq;

    invoke-direct {v0}, Lcom/ss/android/download/api/download/ox$dq;-><init>()V

    invoke-virtual {v0}, Lcom/ss/android/download/api/download/ox$dq;->dq()Lcom/ss/android/download/api/download/ox;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static synthetic iw(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/downloadlib/addownload/p;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/s;->p:Lcom/ss/android/downloadlib/addownload/p;

    return-object p0
.end method

.method private iw(Z)V
    .locals 15

    move/from16 v3, p1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/s;->dq:Ljava/lang/String;

    const-string v2, "pBCD"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Lcom/ss/android/downloadlib/mn/no;->dq(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->jy()Z

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v0

    iget-wide v7, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    invoke-virtual {v0, v7, v8}, Lcom/ss/android/downloadlib/addownload/d/iw;->s(J)Lcom/ss/android/downloadlib/addownload/d/s;

    move-result-object v0

    iget-boolean v2, p0, Lcom/ss/android/downloadlib/addownload/s;->gh:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/s;->kk()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v5}, Lcom/ss/android/downloadlib/addownload/s;->p(Z)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/d/s;->p:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->isAutoDownloadOnCardShow()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v3, v6}, Lcom/ss/android/downloadlib/addownload/s;->dq(ZZ)V

    return-void

    :cond_0
    invoke-virtual {p0, v3, v6}, Lcom/ss/android/downloadlib/addownload/s;->dq(ZZ)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v2}, Lcom/ss/android/download/api/download/DownloadModel;->isAd()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/ss/android/downloadlib/addownload/d/s;->p:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/ss/android/download/api/download/DownloadController;->enableShowComplianceDialog()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/d;->dq()Lcom/ss/android/downloadlib/addownload/compliance/d;

    move-result-object v2

    iget-object v4, v0, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-virtual {v2, v4}, Lcom/ss/android/downloadlib/addownload/compliance/d;->dq(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/d;->dq()Lcom/ss/android/downloadlib/addownload/compliance/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ss/android/downloadlib/addownload/compliance/d;->dq(Lcom/ss/android/downloadlib/addownload/d/s;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0, v3, v6}, Lcom/ss/android/downloadlib/addownload/s;->dq(ZZ)V

    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "pBCD continue download, status:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lcom/ss/android/downloadlib/mn/no;->dq(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/ss/android/download/api/download/DownloadModel;->isNeedWifi()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setOnlyWifi(Z)V

    :cond_4
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v4

    iget-object v7, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4, v7}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/api/dq/d;

    move-result-object v4

    const/4 v14, -0x2

    if-eq v0, v14, :cond_9

    const/4 v7, -0x1

    if-ne v0, v7, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/q;->dq(I)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v7}, Lcom/ss/android/download/api/download/DownloadModel;->enablePause()Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_1

    :cond_6
    iget-object v7, p0, Lcom/ss/android/downloadlib/addownload/s;->p:Lcom/ss/android/downloadlib/addownload/p;

    invoke-virtual {v7, v6}, Lcom/ss/android/downloadlib/addownload/p;->dq(Z)V

    invoke-static {}, Lcom/ss/android/downloadlib/ox/ia;->dq()Lcom/ss/android/downloadlib/ox/ia;

    move-result-object v7

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v8

    iget-wide v9, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    invoke-virtual {v8, v9, v10}, Lcom/ss/android/downloadlib/addownload/d/iw;->p(J)Lcom/ss/android/downloadad/api/dq/d;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ss/android/downloadlib/ox/ia;->d(Lcom/ss/android/downloadad/api/dq/d;)V

    invoke-static {v4}, Lcom/ss/android/downloadlib/mn/s;->dq(Lcom/ss/android/downloadad/api/dq/dq;)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v7

    const-string v8, "cancel_pause_optimise_switch"

    invoke-virtual {v7, v8, v5}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_7

    new-instance v6, Lcom/ss/android/downloadlib/addownload/s$5;

    invoke-direct {v6, p0}, Lcom/ss/android/downloadlib/addownload/s$5;-><init>(Lcom/ss/android/downloadlib/addownload/s;)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/p/p;->dq()Lcom/ss/android/downloadlib/addownload/p/p;

    move-result-object v7

    move v5, v0

    new-instance v0, Lcom/ss/android/downloadlib/addownload/s$6;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/downloadlib/addownload/s$6;-><init>(Lcom/ss/android/downloadlib/addownload/s;IZLcom/ss/android/downloadad/api/dq/d;I)V

    invoke-virtual {v7, v4, v5, v0, v6}, Lcom/ss/android/downloadlib/addownload/p/p;->dq(Lcom/ss/android/downloadad/api/dq/d;ILcom/ss/android/downloadlib/addownload/p/ia;Lcom/ss/android/downloadlib/addownload/dq/ox;)V

    return-void

    :cond_7
    move v5, v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/p/no;->dq()Lcom/ss/android/downloadlib/addownload/p/no;

    move-result-object v6

    new-instance v0, Lcom/ss/android/downloadlib/addownload/s$7;

    move-object v1, p0

    move/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/downloadlib/addownload/s$7;-><init>(Lcom/ss/android/downloadlib/addownload/s;IZLcom/ss/android/downloadad/api/dq/d;I)V

    move-object v2, v0

    move v0, v5

    invoke-virtual {v6, v4, v0, v2}, Lcom/ss/android/downloadlib/addownload/p/no;->dq(Lcom/ss/android/downloadad/api/dq/d;ILcom/ss/android/downloadlib/addownload/p/ia;)V

    return-void

    :cond_8
    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/s;->ox:Lcom/ss/android/downloadlib/addownload/ia;

    iget-object v5, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4, v5, v3}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-direct {p0, v2, v0, v3}, Lcom/ss/android/downloadlib/addownload/s;->dq(IILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void

    :cond_9
    :goto_0
    iget-object v7, p0, Lcom/ss/android/downloadlib/addownload/s;->ox:Lcom/ss/android/downloadlib/addownload/ia;

    iget-object v8, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v7, v8, v3}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    if-eqz v4, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/ss/android/downloadad/api/dq/d;->ia(J)V

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/ss/android/downloadad/api/dq/d;->kk(J)V

    :cond_a
    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setDownloadFromReserveWifi(Z)V

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s;->p:Lcom/ss/android/downloadlib/addownload/p;

    new-instance v7, Lcom/ss/android/downloadlib/addownload/d/s;

    iget-wide v8, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    iget-object v10, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->ig()Lcom/ss/android/download/api/download/DownloadEventConfig;

    move-result-object v11

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->mp()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Lcom/ss/android/downloadlib/addownload/d/s;-><init>(JLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V

    invoke-virtual {v3, v7}, Lcom/ss/android/downloadlib/addownload/p;->dq(Lcom/ss/android/downloadlib/addownload/d/s;)V

    iget-object v7, p0, Lcom/ss/android/downloadlib/addownload/s;->p:Lcom/ss/android/downloadlib/addownload/p;

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v9

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v11

    new-instance v13, Lcom/ss/android/downloadlib/addownload/s$3;

    invoke-direct {v13, p0, v2, v0}, Lcom/ss/android/downloadlib/addownload/s$3;-><init>(Lcom/ss/android/downloadlib/addownload/s;II)V

    move v8, v2

    invoke-virtual/range {v7 .. v13}, Lcom/ss/android/downloadlib/addownload/p;->dq(IJJLcom/ss/android/downloadlib/addownload/s$dq;)V

    if-ne v0, v14, :cond_b

    invoke-static {v4}, Lcom/ss/android/downloadlib/mn/s;->dq(Lcom/ss/android/downloadad/api/dq/dq;)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v2, "show_pause_continue_toast"

    invoke-virtual {v0, v2, v5}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_b

    invoke-static {}, Lcom/ss/android/downloadlib/ia;->dq()Lcom/ss/android/downloadlib/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/ia;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/ss/android/downloadlib/addownload/s$4;

    invoke-direct {v2, p0}, Lcom/ss/android/downloadlib/addownload/s$4;-><init>(Lcom/ss/android/downloadlib/addownload/s;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    :goto_1
    return-void
.end method

.method private jy()Z
    .locals 8

    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "fix_click_start"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v2, -0x4

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    return v3

    :catch_0
    :cond_3
    return v1

    :cond_4
    :goto_0
    return v3

    :cond_5
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-nez v0, :cond_6

    return v3

    :cond_6
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    if-eq v0, v2, :cond_7

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->canResume(I)Z

    move-result v0

    if-nez v0, :cond_7

    return v3

    :cond_7
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    if-nez v0, :cond_8

    return v3

    :cond_8
    return v1
.end method

.method public static synthetic kk(Lcom/ss/android/downloadlib/addownload/s;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/downloadlib/addownload/s;->r:Z

    return p0
.end method

.method public static synthetic mn(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    return-object p0
.end method

.method private mn(Z)V
    .locals 9

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->p:Lcom/ss/android/downloadlib/addownload/p;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/d/s;

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->ig()Lcom/ss/android/download/api/download/DownloadEventConfig;

    move-result-object v5

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->mp()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/downloadlib/addownload/d/s;-><init>(JLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/addownload/p;->dq(Lcom/ss/android/downloadlib/addownload/d/s;)V

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s;->p:Lcom/ss/android/downloadlib/addownload/p;

    new-instance v8, Lcom/ss/android/downloadlib/addownload/s$9;

    invoke-direct {v8, p0, p1}, Lcom/ss/android/downloadlib/addownload/s$9;-><init>(Lcom/ss/android/downloadlib/addownload/s;Z)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/ss/android/downloadlib/addownload/p;->dq(IJJLcom/ss/android/downloadlib/addownload/s$dq;)V

    return-void
.end method

.method private mp()Lcom/ss/android/download/api/download/DownloadController;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->fw:Lcom/ss/android/download/api/download/DownloadController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/download/api/download/d;

    invoke-direct {v0}, Lcom/ss/android/download/api/download/d;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->fw:Lcom/ss/android/download/api/download/DownloadController;

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->fw:Lcom/ss/android/download/api/download/DownloadController;

    return-object v0
.end method

.method private no()V
    .locals 4

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->cd:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->cd:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/download/api/config/OnItemClickListener;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->ig()Lcom/ss/android/download/api/download/DownloadEventConfig;

    move-result-object v2

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->mp()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/download/api/config/OnItemClickListener;->onItemClick(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->cd:Ljava/lang/ref/SoftReference;

    return-void

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->d()Lcom/ss/android/download/api/config/ox;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->getContext()Landroid/content/Context;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->mp()Lcom/ss/android/download/api/download/DownloadController;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->ig()Lcom/ss/android/download/api/download/DownloadEventConfig;

    return-void
.end method

.method public static synthetic o(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/s;->o:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    return-object p0
.end method

.method public static synthetic o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/s;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ox(Lcom/ss/android/downloadlib/addownload/s;)J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    return-wide v0
.end method

.method private ox(I)Z
    .locals 5

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/s;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getQuickAppModel()Lcom/ss/android/download/api/model/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/download/api/model/p;->dq()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    :goto_0
    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    instance-of v4, v3, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->setFunnelType(I)Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/ss/android/downloadlib/mn/kk;->ox(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v1

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    invoke-virtual {v1, v3, v4, p1}, Lcom/ss/android/downloadlib/p/dq;->dq(JI)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput v2, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/ox;->dq()Lcom/ss/android/downloadlib/addownload/ox;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-virtual {p1, p0, v2, v1}, Lcom/ss/android/downloadlib/addownload/ox;->dq(Lcom/ss/android/downloadlib/addownload/s;ILcom/ss/android/download/api/download/DownloadModel;)V

    return v0

    :cond_4
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p1

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    invoke-virtual {p1, v2, v3, v1, v1}, Lcom/ss/android/downloadlib/p/dq;->dq(JZI)V

    return v0
.end method

.method public static synthetic p(Lcom/ss/android/downloadlib/addownload/s;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/s;->iw:Ljava/util/Map;

    return-object p0
.end method

.method private q()V
    .locals 4

    sget-object v0, Lcom/ss/android/downloadlib/addownload/s;->dq:Ljava/lang/String;

    const-string v1, "pICD"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/mn/no;->dq(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/s;->ox:Lcom/ss/android/downloadlib/addownload/ia;

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1, v3}, Lcom/ss/android/downloadlib/addownload/ia;->p(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pICD BC"

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/mn/no;->dq(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/addownload/s;->iw(Z)V

    return-void

    :cond_0
    const-string v1, "pICD IC"

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/mn/no;->dq(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->no()V

    return-void
.end method

.method public static synthetic s(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/download/api/model/DownloadShortInfo;
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->fw()Lcom/ss/android/download/api/model/DownloadShortInfo;

    move-result-object p0

    return-object p0
.end method

.method private s(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v0}, Lcom/ss/android/downloadlib/mn/s;->d(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "notification_opt_2"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/d;->dq()Lcom/ss/android/socialbase/downloader/notification/d;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/notification/d;->iw(I)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/s;->iw(Z)V

    return-void
.end method


# virtual methods
.method public synthetic d(ILcom/ss/android/download/api/download/DownloadStatusChangeListener;)Lcom/ss/android/downloadlib/addownload/mn;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/downloadlib/addownload/s;->dq(ILcom/ss/android/download/api/download/DownloadStatusChangeListener;)Lcom/ss/android/downloadlib/addownload/s;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Landroid/content/Context;)Lcom/ss/android/downloadlib/addownload/mn;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/s;->dq(Landroid/content/Context;)Lcom/ss/android/downloadlib/addownload/s;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Lcom/ss/android/download/api/download/DownloadController;)Lcom/ss/android/downloadlib/addownload/mn;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/s;->dq(Lcom/ss/android/download/api/download/DownloadController;)Lcom/ss/android/downloadlib/addownload/s;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Lcom/ss/android/download/api/download/DownloadEventConfig;)Lcom/ss/android/downloadlib/addownload/mn;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/s;->dq(Lcom/ss/android/download/api/download/DownloadEventConfig;)Lcom/ss/android/downloadlib/addownload/s;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/downloadlib/addownload/mn;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/s;->dq(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/downloadlib/addownload/s;

    move-result-object p1

    return-object p1
.end method

.method public d(I)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error actionType"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s;->ox:Lcom/ss/android/downloadlib/addownload/ia;

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/downloadlib/addownload/ia;->dq(J)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v2

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/downloadlib/addownload/d/iw;->s(J)Lcom/ss/android/downloadlib/addownload/d/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/downloadlib/addownload/d/s;->e()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object v2

    const-string v3, "handleDownload ModelBox !isStrictValid"

    invoke-virtual {v2, v3}, Lcom/ss/android/downloadlib/s/ox;->dq(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s;->ox:Lcom/ss/android/downloadlib/addownload/ia;

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-virtual {v2, p1, v3}, Lcom/ss/android/downloadlib/addownload/ia;->dq(ILcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/iw;->dq()Lcom/ss/android/downloadlib/addownload/compliance/iw;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/s;->ox:Lcom/ss/android/downloadlib/addownload/ia;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    new-instance v2, Lcom/ss/android/downloadlib/addownload/s$1;

    invoke-direct {v2, p0, p1}, Lcom/ss/android/downloadlib/addownload/s$1;-><init>(Lcom/ss/android/downloadlib/addownload/s;I)V

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/compliance/iw;->dq(Lcom/ss/android/downloadlib/addownload/d/s;Lcom/ss/android/downloadlib/addownload/compliance/ia;)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s;->ox:Lcom/ss/android/downloadlib/addownload/ia;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/ss/android/downloadlib/addownload/s;->gh:Z

    invoke-virtual {v2, v3, p1, v4}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Landroid/content/Context;IZ)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/s;->ox(I)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "handleDownload id:"

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    goto :goto_1

    :cond_4
    if-nez v2, :cond_6

    sget-object p1, Lcom/ss/android/downloadlib/addownload/s;->dq:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    const-string v2, ",pBC:"

    invoke-static {v4, v5, v2, v0}, Lg/tn;->f(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/ss/android/downloadlib/mn/no;->dq(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v1}, Lcom/ss/android/downloadlib/addownload/s;->d(Z)V

    return-void

    :cond_5
    if-nez v2, :cond_6

    sget-object p1, Lcom/ss/android/downloadlib/addownload/s;->dq:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    const-string v2, ",pIC:"

    invoke-static {v4, v5, v2, v0}, Lg/tn;->f(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/ss/android/downloadlib/mn/no;->dq(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v1}, Lcom/ss/android/downloadlib/addownload/s;->ox(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public d(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/s;->s(Z)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/s;->no:Z

    return v0
.end method

.method public dq(J)Lcom/ss/android/downloadlib/addownload/mn;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(J)Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    iput-wide p1, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ox:Lcom/ss/android/downloadlib/addownload/ia;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/ia;->dq(J)V

    :cond_0
    return-object p0

    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "setModelId"

    invoke-virtual {p1, p2, v0}, Lcom/ss/android/downloadlib/s/ox;->dq(ZLjava/lang/String;)V

    return-object p0
.end method

.method public dq(Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)Lcom/ss/android/downloadlib/addownload/mn;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->i:Ljava/lang/ref/SoftReference;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->i:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method public dq(Lcom/ss/android/download/api/config/OnItemClickListener;)Lcom/ss/android/downloadlib/addownload/mn;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->cd:Ljava/lang/ref/SoftReference;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->cd:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/mn;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->mp:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public dq(ILcom/ss/android/download/api/download/DownloadStatusChangeListener;)Lcom/ss/android/downloadlib/addownload/s;
    .locals 3

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "back_use_softref_listener"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->iw:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "use_weakref_listener"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->iw:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->iw:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p0
.end method

.method public dq(Landroid/content/Context;)Lcom/ss/android/downloadlib/addownload/s;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->s:Ljava/lang/ref/WeakReference;

    :cond_0
    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/no;->d(Landroid/content/Context;)V

    return-object p0
.end method

.method public dq(Lcom/ss/android/download/api/download/DownloadController;)Lcom/ss/android/downloadlib/addownload/s;
    .locals 3

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->fw:Lcom/ss/android/download/api/download/DownloadController;

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {p1}, Lcom/ss/android/downloadlib/mn/s;->d(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p1

    const-string v0, "force_auto_open"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->mp()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ss/android/download/api/download/DownloadController;->setLinkMode(I)V

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p1

    const-string v0, "fix_show_dialog"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getExtra()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "subprocess"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->mp()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ss/android/download/api/download/DownloadController;->setEnableNewActivity(Z)V

    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->mp()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(JLcom/ss/android/download/api/download/DownloadController;)V

    return-object p0
.end method

.method public dq(Lcom/ss/android/download/api/download/DownloadEventConfig;)Lcom/ss/android/downloadlib/addownload/s;
    .locals 3

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->f:Lcom/ss/android/download/api/download/DownloadEventConfig;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->ig()Lcom/ss/android/download/api/download/DownloadEventConfig;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getDownloadScene()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/ss/android/downloadlib/addownload/s;->gh:Z

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->ig()Lcom/ss/android/download/api/download/DownloadEventConfig;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(JLcom/ss/android/download/api/download/DownloadEventConfig;)V

    return-object p0
.end method

.method public dq(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/downloadlib/addownload/s;
    .locals 5

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->isAd()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object v0

    const-string v1, "setDownloadModel ad error"

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/s/ox;->dq(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "setDownloadModel id=0"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/s/ox;->dq(ZLjava/lang/String;)V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "fix_model_id"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->setId(J)Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    :cond_2
    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(Lcom/ss/android/download/api/download/DownloadModel;)V

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/kk;->dq(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    const-wide/16 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->setExtraValue(J)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object p1

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    invoke-virtual {p1, v2, v3}, Lcom/ss/android/downloadlib/addownload/d/iw;->p(J)Lcom/ss/android/downloadad/api/dq/d;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->ig()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_3

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->s(J)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/kk;->dq()Lcom/ss/android/downloadlib/addownload/d/kk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/d/kk;->dq(Lcom/ss/android/downloadad/api/dq/d;)V

    :cond_3
    return-object p0
.end method

.method public dq()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/s;->no:Z

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v1

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->ig()Lcom/ss/android/download/api/download/DownloadEventConfig;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(JLcom/ss/android/download/api/download/DownloadEventConfig;)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v1

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->mp()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(JLcom/ss/android/download/api/download/DownloadController;)V

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/s;->ox:Lcom/ss/android/downloadlib/addownload/ia;

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/downloadlib/addownload/ia;->dq(J)V

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->f()V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "enable_empty_listener"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->iw:Ljava/util/Map;

    const/high16 v1, -0x80000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/download/api/config/dq;

    invoke-direct {v0}, Lcom/ss/android/download/api/config/dq;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/downloadlib/addownload/s;->dq(ILcom/ss/android/download/api/download/DownloadStatusChangeListener;)Lcom/ss/android/downloadlib/addownload/s;

    :cond_0
    return-void
.end method

.method public dq(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/s;->no:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ox:Lcom/ss/android/downloadlib/addownload/ia;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->fw()Lcom/ss/android/download/api/model/DownloadShortInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s;->iw:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Landroid/os/Message;Lcom/ss/android/download/api/model/DownloadShortInfo;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dq(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/p;->d()Lcom/ss/android/socialbase/appdownloader/ox/p;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/appdownloader/ox/p;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ob()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->cancel(IZ)V

    return-void

    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.ss.intent.action.DOWNLOAD_DELETE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    const-string v1, "extra_click_download_ids"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    return-void
.end method

.method public dq(ZZ)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/p/dq;->dq(JI)V

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/mn/mp;->dq()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1}, Lcom/ss/android/downloadlib/mn/o;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->mp()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadController;->enableNewActivity()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ox:Lcom/ss/android/downloadlib/addownload/ia;

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/ia;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ss/android/download/api/download/DownloadModel;->setFilePath(Ljava/lang/String;)Lcom/ss/android/download/api/download/DownloadModel;

    goto :goto_0

    :cond_1
    const-string p1, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p1}, Lcom/ss/android/downloadlib/mn/o;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "android.permission.READ_MEDIA_AUDIO"

    invoke-static {p1}, Lcom/ss/android/downloadlib/mn/o;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {p1}, Lcom/ss/android/downloadlib/mn/o;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->mp()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadController;->enableNewActivity()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ox:Lcom/ss/android/downloadlib/addownload/ia;

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/ia;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ss/android/download/api/download/DownloadModel;->setFilePath(Ljava/lang/String;)Lcom/ss/android/download/api/download/DownloadModel;

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {p1}, Lcom/ss/android/downloadlib/mn/s;->ox(Lcom/ss/android/download/api/download/DownloadModel;)I

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/ss/android/downloadlib/addownload/s;->dq:Ljava/lang/String;

    const-string v0, "pBCD not start"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/ss/android/downloadlib/mn/no;->dq(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->ox:Lcom/ss/android/downloadlib/addownload/ia;

    new-instance v0, Lcom/ss/android/downloadlib/addownload/s$8;

    invoke-direct {v0, p0, p2}, Lcom/ss/android/downloadlib/addownload/s$8;-><init>(Lcom/ss/android/downloadlib/addownload/s;Z)V

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Lcom/ss/android/download/api/config/r;)V

    return-void

    :cond_3
    invoke-direct {p0, p2}, Lcom/ss/android/downloadlib/addownload/s;->mn(Z)V

    return-void
.end method

.method public dq(I)Z
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->iw:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->iw:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->iw:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/s;->no:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ss/android/downloadlib/addownload/s;->ig:J

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->removeTaskMainListener(I)V

    :cond_1
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->kk:Lcom/ss/android/downloadlib/addownload/s$ox;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->kk:Lcom/ss/android/downloadlib/addownload/s$ox;

    invoke-virtual {p1, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_2
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->ox:Lcom/ss/android/downloadlib/addownload/ia;

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    sget-object p1, Lcom/ss/android/downloadlib/addownload/s;->dq:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onUnbind removeCallbacksAndMessages, downloadUrl:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-nez v2, :cond_3

    const-string v2, ""

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/ss/android/downloadlib/mn/no;->dq(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->d:Lcom/ss/android/downloadlib/mn/q;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/ss/android/downloadlib/addownload/s;->mn:Lcom/ss/android/download/api/model/DownloadShortInfo;

    iput-object v2, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    return v1

    :cond_4
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->iw:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->iw:Ljava/util/Map;

    const/high16 v1, -0x80000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->ox:Lcom/ss/android/downloadlib/addownload/ia;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v1}, Lcom/ss/android/downloadlib/addownload/ia;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    :cond_5
    return v0
.end method

.method public ia()V
    .locals 3

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/d/iw;->iw(J)V

    return-void
.end method

.method public iw()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->d:Lcom/ss/android/downloadlib/mn/q;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/s$2;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/s$2;-><init>(Lcom/ss/android/downloadlib/addownload/s;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public kk()Z
    .locals 2

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->i:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

    invoke-static {v1, v0}, Lcom/ss/android/downloadlib/addownload/kk;->dq(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)Z

    move-result v0

    return v0
.end method

.method public mn()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->iw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->iw:Ljava/util/Map;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onIdle()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_2

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public ox(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/s;->q:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/p/dq;->dq(JI)V

    :cond_0
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->q()V

    return-void
.end method

.method public ox()Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ig:J

    return-wide v0
.end method

.method public p(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->i:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    const-string v2, "mDownloadButtonClickListener has recycled"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->i:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

    invoke-interface {p1, v0}, Lcom/ss/android/download/api/config/IDownloadButtonClickListener;->handleComplianceDialog(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->i:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

    invoke-interface {p1}, Lcom/ss/android/download/api/config/IDownloadButtonClickListener;->handleMarketFailedComplianceDialog()V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/s;->i:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ss/android/downloadlib/s/ox;->d(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ss/android/downloadlib/s/ox;->d(Ljava/lang/String;)V

    return v1
.end method

.method public s()Z
    .locals 5

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "quick_app_enable_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getQuickAppModel()Lcom/ss/android/download/api/model/p;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getQuickAppModel()Lcom/ss/android/download/api/model/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/download/api/model/p;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s;->ia:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/ox;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/s;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s;->jy:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v3}, Lcom/ss/android/download/api/download/DownloadModel;->getQuickAppModel()Lcom/ss/android/download/api/model/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/download/api/model/p;->dq()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/mn/mp;->dq(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

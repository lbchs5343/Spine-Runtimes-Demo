.class public Lcom/bytedance/sdk/openadsdk/downloadnew/ox;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/downloadnew/ox$dq;,
        Lcom/bytedance/sdk/openadsdk/downloadnew/ox$p;,
        Lcom/bytedance/sdk/openadsdk/downloadnew/ox$s;,
        Lcom/bytedance/sdk/openadsdk/downloadnew/ox$d;,
        Lcom/bytedance/sdk/openadsdk/downloadnew/ox$ox;
    }
.end annotation


# static fields
.field public static d:Z

.field public static volatile dq:Ljava/lang/String;

.field private static final ia:Lcom/ss/android/download/api/download/dq/dq;

.field private static iw:Landroid/content/Context;

.field private static mn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadAdapter$OnEventLogHandler;",
            ">;"
        }
    .end annotation
.end field

.field public static ox:Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

.field private static final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final s:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->d:Z

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->dq(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->dq:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$6;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$6;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->ia:Lcom/ss/android/download/api/download/dq/dq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static d(Lcom/ss/android/download/api/model/ox;)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "category"

    invoke-virtual {p0}, Lcom/ss/android/download/api/model/ox;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tag"

    invoke-virtual {p0}, Lcom/ss/android/download/api/model/ox;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "label"

    invoke-virtual {p0}, Lcom/ss/android/download/api/model/ox;->ox()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isAd"

    invoke-virtual {p0}, Lcom/ss/android/download/api/model/ox;->p()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "adId"

    invoke-virtual {p0}, Lcom/ss/android/download/api/model/ox;->s()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "logExtra"

    invoke-virtual {p0}, Lcom/ss/android/download/api/model/ox;->iw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "extValue"

    invoke-virtual {p0}, Lcom/ss/android/download/api/model/ox;->mn()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "extJson"

    invoke-virtual {p0}, Lcom/ss/android/download/api/model/ox;->ia()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "paramsJson"

    invoke-virtual {p0}, Lcom/ss/android/download/api/model/ox;->kk()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eventSource"

    invoke-virtual {p0}, Lcom/ss/android/download/api/model/ox;->no()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "extraObject"

    invoke-virtual {p0}, Lcom/ss/android/download/api/model/ox;->ig()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "clickTrackUrl"

    invoke-virtual {p0}, Lcom/ss/android/download/api/model/ox;->o()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isV3"

    invoke-virtual {p0}, Lcom/ss/android/download/api/model/ox;->mp()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "V3EventName"

    invoke-virtual {p0}, Lcom/ss/android/download/api/model/ox;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "V3EventParams"

    invoke-virtual {p0}, Lcom/ss/android/download/api/model/ox;->jy()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static d()V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->dq()Lcom/ss/android/downloadlib/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/o;->mn()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->iw()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->iw()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->dq:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;->clearAllData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->ox(Ljava/lang/String;)V

    return-void
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, ""

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->mn()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-static {p0}, Lcom/ss/android/downloadlib/o;->dq(Landroid/content/Context;)Lcom/ss/android/downloadlib/o;

    move-result-object v2

    const-string v3, "pangolin"

    invoke-virtual {v2, v3}, Lcom/ss/android/downloadlib/o;->dq(Ljava/lang/String;)Lcom/ss/android/download/api/dq;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_2
    invoke-static {p0}, Lcom/ss/android/downloadlib/o;->dq(Landroid/content/Context;)Lcom/ss/android/downloadlib/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/downloadlib/o;->dq()Lcom/ss/android/download/api/dq;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_3

    return v0

    :cond_3
    new-instance v0, Lcom/ss/android/download/api/model/dq$dq;

    invoke-direct {v0}, Lcom/ss/android/download/api/model/dq$dq;-><init>()V

    const-string v3, "143"

    invoke-virtual {v0, v3}, Lcom/ss/android/download/api/model/dq$dq;->d(Ljava/lang/String;)Lcom/ss/android/download/api/model/dq$dq;

    move-result-object v0

    const-string v3, "open_news"

    invoke-virtual {v0, v3}, Lcom/ss/android/download/api/model/dq$dq;->dq(Ljava/lang/String;)Lcom/ss/android/download/api/model/dq$dq;

    move-result-object v0

    const-string v3, "6.6.0.7"

    invoke-virtual {v0, v3}, Lcom/ss/android/download/api/model/dq$dq;->ox(Ljava/lang/String;)Lcom/ss/android/download/api/model/dq$dq;

    move-result-object v0

    const-string v3, "6607"

    invoke-virtual {v0, v3}, Lcom/ss/android/download/api/model/dq$dq;->p(Ljava/lang/String;)Lcom/ss/android/download/api/model/dq$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/download/api/model/dq$dq;->dq()Lcom/ss/android/download/api/model/dq;

    move-result-object v0

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$ox;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$ox;-><init>()V

    invoke-interface {v2, v3}, Lcom/ss/android/download/api/dq;->dq(Lcom/ss/android/download/api/config/kk;)Lcom/ss/android/download/api/dq;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$dq;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$dq;-><init>()V

    invoke-interface {v2, v3}, Lcom/ss/android/download/api/dq;->dq(Lcom/ss/android/download/api/config/mn;)Lcom/ss/android/download/api/dq;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$p;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$p;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Lcom/ss/android/download/api/dq;->dq(Lcom/ss/android/download/api/config/ig;)Lcom/ss/android/download/api/dq;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$d;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$d;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/ox$1;)V

    invoke-interface {v2, v3}, Lcom/ss/android/download/api/dq;->dq(Lcom/ss/android/download/api/config/ia;)Lcom/ss/android/download/api/dq;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$3;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$3;-><init>()V

    invoke-interface {v2, v3}, Lcom/ss/android/download/api/dq;->dq(Lcom/ss/android/download/api/config/o;)Lcom/ss/android/download/api/dq;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$2;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$2;-><init>()V

    invoke-interface {v2, v3}, Lcom/ss/android/download/api/dq;->dq(Lcom/ss/android/download/api/config/d;)Lcom/ss/android/download/api/dq;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/ss/android/download/api/dq;->dq(Lcom/ss/android/download/api/model/dq;)Lcom/ss/android/download/api/dq;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$1;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$1;-><init>()V

    invoke-interface {v0, v2}, Lcom/ss/android/download/api/dq;->dq(Lcom/ss/android/download/api/config/fw;)Lcom/ss/android/download/api/dq;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".TTFileProvider"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/android/download/api/dq;->dq(Ljava/lang/String;)Lcom/ss/android/download/api/dq;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->ia()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->dq(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/android/download/api/dq;->dq(Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;)Lcom/ss/android/download/api/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/download/api/dq;->dq()V

    invoke-static {}, Lcom/ss/android/downloadlib/mn/dq;->dq()V

    invoke-static {p0}, Lcom/ss/android/downloadlib/o;->dq(Landroid/content/Context;)Lcom/ss/android/downloadlib/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/o;->p()Lcom/ss/android/downloadad/api/dq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ss/android/downloadad/api/dq;->dq(I)V

    invoke-static {p0}, Lcom/ss/android/downloadlib/o;->dq(Landroid/content/Context;)Lcom/ss/android/downloadlib/o;

    move-result-object p0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->ia:Lcom/ss/android/download/api/download/dq/dq;

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/o;->dq(Lcom/ss/android/download/api/download/dq/dq;)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object p0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$4;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$4;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Lcom/ss/android/socialbase/downloader/depend/bl;)V

    return v1
.end method

.method public static dq()Lcom/ss/android/downloadlib/o;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->dq(Landroid/content/Context;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/o;->dq(Landroid/content/Context;)Lcom/ss/android/downloadlib/o;

    move-result-object v0

    return-object v0
.end method

.method private static dq(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .locals 2

    const-string v0, "download_exp_switch_temp"

    const v1, 0x3dffffff    # 0.12499999f

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$5;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$5;-><init>()V

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadSetting(Lcom/ss/android/socialbase/downloader/depend/h;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadExpSwitch(I)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    move-result-object p0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$s;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$s;-><init>()V

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->httpService(Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic dq(Lcom/ss/android/download/api/model/ox;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->d(Lcom/ss/android/download/api/model/ox;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static dq(I)V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->mn:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static dq(ILcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadAdapter$OnEventLogHandler;)V
    .locals 1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->mn:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->mn:Ljava/util/Map;

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->mn:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static dq(Landroid/content/Context;)V
    .locals 4

    if-nez p0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    if-nez p0, :cond_1

    goto/16 :goto_4

    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const-class v0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;

    monitor-enter v0

    :try_start_1
    sget-object v2, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->iw:Landroid/content/Context;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->iw()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->iw()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object p0

    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->d:Z

    invoke-interface {p0, v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;->initPath(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sput-object p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->dq:Ljava/lang/String;

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->iw:Landroid/content/Context;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->d(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_4
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->iw()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->iw()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;->getTTDownloadEventLogger()Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;

    move-result-object v1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_6

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_6
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;->onDownloadConfigReady()V

    :cond_7
    :goto_4
    return-void
.end method

.method public static dq(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->dq:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/downloadnew/core/ExitInstallListener;)Z
    .locals 2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/dq/dq;->dq()Lcom/ss/android/downloadlib/addownload/dq/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$7;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$7;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/core/ExitInstallListener;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/ss/android/downloadlib/addownload/dq/dq;->dq(Landroid/app/Activity;ZLcom/ss/android/downloadlib/addownload/dq/dq$dq;)Z

    move-result p0

    return p0
.end method

.method public static dq(Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)Z
    .locals 7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->dq()Lcom/ss/android/downloadlib/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/o;->s()Lcom/ss/android/downloadad/api/d;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/downloadad/api/d;->dq(Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)Z

    move-result p0

    return p0
.end method

.method public static dq(Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)Z
    .locals 8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->dq()Lcom/ss/android/downloadlib/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/o;->s()Lcom/ss/android/downloadad/api/d;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/ss/android/downloadad/api/d;->dq(Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)Z

    move-result p0

    return p0
.end method

.method public static dq(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ss/android/socialbase/appdownloader/p;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static dq(Landroid/net/Uri;)Z
    .locals 0

    invoke-static {p0}, Lcom/ss/android/downloadlib/d/o;->dq(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Z
    .locals 10

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->ox()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadAdapter$OnEventLogHandler;

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, p0

    move-object v8, p1

    move-object v9, p3

    invoke-interface/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadAdapter$OnEventLogHandler;->onEventLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-nez v1, :cond_2

    if-nez p0, :cond_2

    const/4 p0, 0x1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move-object v7, p0

    move-object v8, p1

    move-object v9, p3

    :cond_2
    :goto_1
    move-object p0, v7

    move-object p1, v8

    move-object p3, v9

    goto :goto_0

    :cond_3
    :goto_2
    return v1
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->iw:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static ia()Lorg/json/JSONObject;
    .locals 3

    const-string v0, "enable_app_install_receiver"

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->iw()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;->getDownloadSettings()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method private static iw()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->ox:Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/dq;->dq(I)Landroid/os/Bundle;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getExtra(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    :cond_1
    return-object v0
.end method

.method private static mn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static ox()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadAdapter$OnEventLogHandler;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->mn:Ljava/util/Map;

    return-object v0
.end method

.method private static ox(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(Ljava/lang/String;)Lcom/ss/android/downloadad/api/dq/d;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/ss/android/downloadad/api/dq/d;->mn()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->iw()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->iw()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;->checkAutoControl(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic p()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->iw()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic s()Lorg/json/JSONObject;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->ia()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

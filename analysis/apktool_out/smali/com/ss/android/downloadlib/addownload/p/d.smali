.class public Lcom/ss/android/downloadlib/addownload/p/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/p/mn;


# static fields
.field private static d:Lcom/ss/android/downloadlib/addownload/dq/ox;

.field private static dq:Lcom/ss/android/downloadlib/addownload/dq/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lcom/ss/android/downloadlib/addownload/dq/ox;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/p/d;->d:Lcom/ss/android/downloadlib/addownload/dq/ox;

    return-object v0
.end method

.method private dq(I)I
    .locals 2

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p1

    const-string v0, "cancel_pause_optimise_apk_size"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p1

    const/high16 v0, 0x100000

    mul-int p1, p1, v0

    return p1
.end method

.method public static dq()Lcom/ss/android/downloadlib/addownload/dq/p;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/p/d;->dq:Lcom/ss/android/downloadlib/addownload/dq/p;

    return-object v0
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/addownload/dq/p;)Lcom/ss/android/downloadlib/addownload/dq/p;
    .locals 0

    sput-object p0, Lcom/ss/android/downloadlib/addownload/p/d;->dq:Lcom/ss/android/downloadlib/addownload/dq/p;

    return-object p0
.end method

.method private dq(IILcom/ss/android/downloadad/api/dq/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "pause_optimise_type"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "pause_optimise_action"

    invoke-virtual {v0, p4, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "download_current_bytes"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p4, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "download_total_bytes"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p1

    const-string p2, "pause_cancel_optimise"

    invoke-virtual {p1, p2, v0, p3}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void
.end method

.method public static dq(Lcom/ss/android/downloadlib/addownload/dq/ox;)V
    .locals 0

    sput-object p0, Lcom/ss/android/downloadlib/addownload/p/d;->d:Lcom/ss/android/downloadlib/addownload/dq/ox;

    return-void
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/addownload/p/d;IILcom/ss/android/downloadad/api/dq/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ss/android/downloadlib/addownload/p/d;->dq(IILcom/ss/android/downloadad/api/dq/d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dq(Lcom/ss/android/downloadad/api/dq/dq;)Z
    .locals 3

    invoke-static {p1}, Lcom/ss/android/downloadlib/mn/s;->dq(Lcom/ss/android/downloadad/api/dq/dq;)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "cancel_pause_optimise_apk_retain_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/ss/android/downloadad/api/dq/dq;->fw()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2
.end method


# virtual methods
.method public dq(Lcom/ss/android/downloadad/api/dq/d;ILcom/ss/android/downloadlib/addownload/p/ia;Lcom/ss/android/downloadlib/addownload/dq/ox;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/ss/android/downloadlib/addownload/p/d;->dq(Lcom/ss/android/downloadad/api/dq/dq;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->ws()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v6, 0x1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/downloadlib/o;->dq(Landroid/content/Context;)Lcom/ss/android/downloadlib/o;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->ws()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v6}, Lcom/ss/android/downloadlib/o;->dq(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/downloadlib/o;->dq(Landroid/content/Context;)Lcom/ss/android/downloadlib/o;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/o;->d(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v7

    invoke-static {v2, v3, v4, v7, v8}, Lcom/ss/android/downloadlib/addownload/o;->dq(IJJ)J

    move-result-wide v7

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v9

    const-wide/16 v1, 0x0

    cmp-long v3, v7, v1

    if-ltz v3, :cond_5

    cmp-long v3, v9, v1

    if-lez v3, :cond_5

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->gh()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ss/android/downloadlib/addownload/p/d;->dq(I)I

    move-result v1

    int-to-long v3, v1

    cmp-long v1, v9, v3

    if-gtz v1, :cond_5

    const-wide/32 v0, 0x100000

    div-long v0, v7, v0

    long-to-int v1, v0

    new-instance v0, Lcom/ss/android/downloadlib/addownload/p/d$1;

    move v3, v1

    move-object v4, p1

    move-object v5, p3

    move v2, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/downloadlib/addownload/p/d$1;-><init>(Lcom/ss/android/downloadlib/addownload/p/d;IILcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/addownload/p/ia;)V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/p/d;->dq:Lcom/ss/android/downloadlib/addownload/dq/p;

    sub-long/2addr v9, v7

    invoke-static {v9, v10}, Lcom/ss/android/downloadlib/mn/mp;->dq(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8be5\u4e0b\u8f7d\u4efb\u52a1\u4ec5\u9700"

    const-string v3, "\uff0c\u5373\u5c06\u4e0b\u8f7d\u5b8c\u6210\uff0c\u662f\u5426\u7ee7\u7eed\u4e0b\u8f7d\uff1f"

    invoke-static {v1, v0, v3}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz p4, :cond_4

    new-instance v0, Lcom/ss/android/downloadlib/addownload/p/d$2;

    move v3, v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/downloadlib/addownload/p/d$2;-><init>(Lcom/ss/android/downloadlib/addownload/p/d;IILcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/addownload/dq/ox;)V

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/p/d;->dq(Lcom/ss/android/downloadlib/addownload/dq/ox;)V

    :cond_4
    const-string v0, "\u6682\u505c"

    const-string v1, "\u5220\u9664"

    const-string v2, "\u7ee7\u7eed"

    invoke-static {p1, v7, v2, v0, v1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->dq(Lcom/ss/android/downloadad/api/dq/dq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_5
    return v0
.end method

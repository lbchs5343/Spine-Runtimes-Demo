.class public Lcom/ss/android/downloadlib/addownload/p/ox;
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

    sget-object v0, Lcom/ss/android/downloadlib/addownload/p/ox;->d:Lcom/ss/android/downloadlib/addownload/dq/ox;

    return-object v0
.end method

.method private dq(I)I
    .locals 2

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p1

    const-string v0, "cancel_pause_optimise_download_percent_value"

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public static dq()Lcom/ss/android/downloadlib/addownload/dq/p;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/p/ox;->dq:Lcom/ss/android/downloadlib/addownload/dq/p;

    return-object v0
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/addownload/dq/p;)Lcom/ss/android/downloadlib/addownload/dq/p;
    .locals 0

    sput-object p0, Lcom/ss/android/downloadlib/addownload/p/ox;->dq:Lcom/ss/android/downloadlib/addownload/dq/p;

    return-object p0
.end method

.method private dq(IIILcom/ss/android/downloadad/api/dq/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "pause_optimise_type"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "pause_optimise_action"

    invoke-virtual {v0, p5, p6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "download_percent"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p5, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "download_current_bytes"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "download_total_bytes"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    invoke-virtual {p1, p2, v0, p4}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void
.end method

.method public static dq(Lcom/ss/android/downloadlib/addownload/dq/ox;)V
    .locals 0

    sput-object p0, Lcom/ss/android/downloadlib/addownload/p/ox;->d:Lcom/ss/android/downloadlib/addownload/dq/ox;

    return-void
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/addownload/p/ox;IIILcom/ss/android/downloadad/api/dq/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ss/android/downloadlib/addownload/p/ox;->dq(IIILcom/ss/android/downloadad/api/dq/d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dq(Lcom/ss/android/downloadad/api/dq/dq;)Z
    .locals 3

    invoke-static {p1}, Lcom/ss/android/downloadlib/mn/s;->dq(Lcom/ss/android/downloadad/api/dq/dq;)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "cancel_pause_optimise_download_percent_retain_switch"

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
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/ss/android/downloadlib/addownload/p/ox;->dq(Lcom/ss/android/downloadad/api/dq/dq;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->ws()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v7, 0x1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/downloadlib/o;->dq(Landroid/content/Context;)Lcom/ss/android/downloadlib/o;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->ws()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v7}, Lcom/ss/android/downloadlib/o;->dq(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

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
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v10

    const-wide/16 v2, 0x0

    cmp-long v4, v8, v2

    if-ltz v4, :cond_7

    cmp-long v4, v10, v2

    if-lez v4, :cond_7

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    const-wide/16 v2, 0x64

    mul-long v2, v2, v8

    div-long/2addr v2, v10

    long-to-int v3, v2

    invoke-static {v1, v3}, Lcom/ss/android/downloadlib/addownload/o;->dq(II)I

    move-result v2

    const-wide/32 v3, 0x100000

    div-long v3, v8, v3

    long-to-int v3, v3

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->gh()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ss/android/downloadlib/addownload/p/ox;->dq(I)I

    move-result v1

    if-le v2, v1, :cond_4

    const/4 v12, 0x1

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    :goto_1
    new-instance v0, Lcom/ss/android/downloadlib/addownload/p/ox$1;

    move v4, v3

    move-object v1, p0

    move-object v5, p1

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/downloadlib/addownload/p/ox$1;-><init>(Lcom/ss/android/downloadlib/addownload/p/ox;IIILcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/addownload/p/ia;)V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/p/ox;->dq:Lcom/ss/android/downloadlib/addownload/dq/p;

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->gh()I

    move-result v0

    invoke-static {v0, v8, v9, v10, v11}, Lcom/ss/android/downloadlib/addownload/o;->dq(IJJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/mn/mp;->dq(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8be5\u4efb\u52a1\u5df2\u4e0b\u8f7d"

    if-eqz v12, :cond_5

    sub-long/2addr v10, v8

    invoke-static {v10, v11}, Lcom/ss/android/downloadlib/mn/mp;->dq(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\uff0c\u4ec5\u9700"

    const-string v6, "\u5373\u53ef\u4e0b\u8f7d\u5b8c\u6210\uff0c\u662f\u5426\u7ee7\u7eed\uff1f"

    invoke-static {v1, v0, v5, v4, v6}, Lg/tn;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v8, v0

    goto :goto_3

    :cond_5
    const-string v4, "\uff0c\u5373\u5c06\u4e0b\u8f7d\u5b8c\u6210\uff0c\u662f\u5426\u7ee7\u7eed\u4e0b\u8f7d\uff1f"

    invoke-static {v1, v0, v4}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :goto_3
    if-eqz p4, :cond_6

    new-instance v0, Lcom/ss/android/downloadlib/addownload/p/ox$2;

    move v4, v3

    move-object v1, p0

    move-object v5, p1

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/downloadlib/addownload/p/ox$2;-><init>(Lcom/ss/android/downloadlib/addownload/p/ox;IIILcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/addownload/dq/ox;)V

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/p/ox;->dq(Lcom/ss/android/downloadlib/addownload/dq/ox;)V

    :cond_6
    const-string v0, "\u6682\u505c"

    const-string v1, "\u5220\u9664"

    const-string v2, "\u7ee7\u7eed"

    invoke-static {p1, v8, v2, v0, v1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->d(Lcom/ss/android/downloadad/api/dq/dq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_7
    return v0
.end method

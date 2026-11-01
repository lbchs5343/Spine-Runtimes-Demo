.class public Lcom/ss/android/downloadlib/d/dq;
.super Ljava/lang/Object;


# static fields
.field private static final dq:Ljava/lang/String; = "dq"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lcom/ss/android/downloadad/api/dq/d;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "app_link_opt"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/ss/android/downloadad/api/dq/d;->iw()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v2, p0}, Lcom/ss/android/downloadlib/mn/iw;->dq(Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "applink_source"

    const-string v4, "dialog_click_by_sdk"

    invoke-static {v2, v3, v4}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v3

    const-string v4, "applink_click"

    invoke-virtual {v3, v4, v2, p0}, Lcom/ss/android/downloadlib/p/dq;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    invoke-static {v0, p0}, Lcom/ss/android/downloadlib/mn/kk;->dq(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)Lcom/ss/android/downloadlib/addownload/d/mn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/downloadlib/addownload/d/mn;->getType()I

    move-result v4

    const/4 v5, 0x2

    const-string v6, "dialog_by_url"

    if-ne v4, v5, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v6, v3, v2, p0}, Lcom/ss/android/downloadlib/d/dq;->d(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/d/mn;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    :cond_2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/downloadad/api/dq/d;->s()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, p0}, Lcom/ss/android/downloadlib/mn/kk;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)Lcom/ss/android/downloadlib/addownload/d/mn;

    move-result-object v3

    :cond_3
    invoke-virtual {v3}, Lcom/ss/android/downloadlib/addownload/d/mn;->getType()I

    move-result v0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    const-string v4, "dialog_by_package"

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object p0

    const-string v0, "AppLinkClickDialog default"

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/s/ox;->d(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {v4, v3, v2, p0}, Lcom/ss/android/downloadlib/d/dq;->dq(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/d/mn;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void

    :cond_5
    invoke-static {v4, v2, p0}, Lcom/ss/android/downloadlib/d/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void

    :cond_6
    invoke-static {v6, v2, p0}, Lcom/ss/android/downloadlib/d/dq;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/d/mn;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V
    .locals 1

    const-string v0, "applink_source"

    invoke-static {p2, v0, p0}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/d/mn;->dq()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "error_code"

    invoke-static {p2, p1, p0}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p3}, Lcom/ss/android/downloadad/api/dq/dq;->r()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "download_scene"

    invoke-static {p2, p1, p0}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p0

    const-string p1, "deeplink_url_open_fail"

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/downloadlib/p/dq;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V
    .locals 3

    const-string v0, "applink_source"

    invoke-static {p1, v0, p0}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/ss/android/downloadad/api/dq/dq;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "download_scene"

    invoke-static {p1, v1, v0}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    const-string v1, "deeplink_url_open"

    invoke-virtual {v0, v1, p1, p2}, Lcom/ss/android/downloadlib/p/dq;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "dialog_by_url"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "notify_by_url"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "by_url"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "auto_by_url"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "check_applink_mode"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    and-int/2addr p0, v1

    if-eqz p0, :cond_4

    const-string p0, "check_applink_result_by_sdk"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/ss/android/downloadlib/d/s;->dq()Lcom/ss/android/downloadlib/d/s;

    move-result-object p0

    new-instance v0, Lcom/ss/android/downloadlib/d/dq$2;

    invoke-direct {v0, p1, p2}, Lcom/ss/android/downloadlib/d/dq$2;-><init>(Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/d/s;->dq(Lcom/ss/android/downloadlib/d/p;)V

    return-void

    :cond_4
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->d()Lcom/ss/android/download/api/config/ox;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    invoke-interface {p2}, Lcom/ss/android/downloadad/api/dq/dq;->i()Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p2}, Lcom/ss/android/downloadad/api/dq/dq;->k()Lcom/ss/android/download/api/download/DownloadController;

    invoke-interface {p2}, Lcom/ss/android/downloadad/api/dq/dq;->le()Lcom/ss/android/download/api/download/DownloadEventConfig;

    invoke-interface {p2}, Lcom/ss/android/downloadad/api/dq/dq;->s()Ljava/lang/String;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66a1d5e9 -> :sswitch_3
        -0x51ef0279 -> :sswitch_2
        -0x7b8b0c3 -> :sswitch_1
        0x3174fc5e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static dq(Lcom/ss/android/downloadad/api/dq/d;)V
    .locals 6

    invoke-virtual {p0}, Lcom/ss/android/downloadad/api/dq/d;->iw()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, p0}, Lcom/ss/android/downloadlib/mn/iw;->dq(Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "applink_source"

    const-string v3, "notify_click_by_sdk"

    invoke-static {v1, v2, v3}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v2

    const-string v3, "applink_click"

    invoke-virtual {v2, v3, v1, p0}, Lcom/ss/android/downloadlib/p/dq;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    invoke-static {v0, p0}, Lcom/ss/android/downloadlib/mn/kk;->dq(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)Lcom/ss/android/downloadlib/addownload/d/mn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/downloadlib/addownload/d/mn;->getType()I

    move-result v3

    const/4 v4, 0x2

    const-string v5, "notify_by_url"

    if-ne v3, v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v5, v2, v1, p0}, Lcom/ss/android/downloadlib/d/dq;->d(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/d/mn;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/downloadad/api/dq/d;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p0}, Lcom/ss/android/downloadlib/mn/kk;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)Lcom/ss/android/downloadlib/addownload/d/mn;

    move-result-object v2

    :cond_1
    invoke-virtual {v2}, Lcom/ss/android/downloadlib/addownload/d/mn;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    const-string v4, "notify_by_package"

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object p0

    const-string v0, "AppLinkClickNotification default"

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/s/ox;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v4, v2, v1, p0}, Lcom/ss/android/downloadlib/d/dq;->dq(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/d/mn;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void

    :cond_3
    invoke-static {v4, v1, p0}, Lcom/ss/android/downloadlib/d/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void

    :cond_4
    invoke-static {v5, v1, p0}, Lcom/ss/android/downloadlib/d/dq;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void
.end method

.method public static dq(Lcom/ss/android/downloadlib/addownload/d/mn;Lcom/ss/android/downloadlib/addownload/d/s;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/d/mn;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "open_market"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/mn/mp;->dq([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ttdownloader_type"

    const-string v3, "backup"

    invoke-static {v1, v2, v3}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/d/mn;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    const/4 p2, 0x6

    if-eq v2, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/d/mn;->dq()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "error_code"

    invoke-static {v1, p2, p0}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/d/s;->r()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "download_scene"

    invoke-static {v1, p2, p0}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p0

    const-string p2, "market_open_failed"

    invoke-virtual {p0, p2, v1, p1}, Lcom/ss/android/downloadlib/p/dq;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void

    :cond_1
    invoke-static {v0, v1, p1, p2}, Lcom/ss/android/downloadlib/d/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadlib/addownload/d/s;Z)V

    return-void
.end method

.method public static dq(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/d/mn;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V
    .locals 1

    const-string v0, "applink_source"

    invoke-static {p2, v0, p0}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/d/mn;->dq()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "error_code"

    invoke-static {p2, p1, p0}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p3}, Lcom/ss/android/downloadad/api/dq/dq;->r()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "download_scene"

    invoke-static {p2, p1, p0}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p0

    const-string p1, "deeplink_app_open_fail"

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/downloadlib/p/dq;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void
.end method

.method public static dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V
    .locals 3

    const-string v0, "applink_source"

    invoke-static {p1, v0, p0}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/ss/android/downloadad/api/dq/dq;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "download_scene"

    invoke-static {p1, v1, v0}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    const-string v1, "deeplink_app_open"

    invoke-virtual {v0, v1, p1, p2}, Lcom/ss/android/downloadlib/p/dq;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "dialog_by_package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "by_package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "auto_by_package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "notify_by_package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "check_applink_mode"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    and-int/2addr p0, v1

    if-eqz p0, :cond_4

    const-string p0, "check_applink_result_by_sdk"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/ss/android/downloadlib/d/s;->dq()Lcom/ss/android/downloadlib/d/s;

    move-result-object p0

    new-instance v0, Lcom/ss/android/downloadlib/d/dq$1;

    invoke-direct {v0, p1, p2}, Lcom/ss/android/downloadlib/d/dq$1;-><init>(Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/d/s;->dq(Lcom/ss/android/downloadlib/d/p;)V

    return-void

    :cond_4
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->d()Lcom/ss/android/download/api/config/ox;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    invoke-interface {p2}, Lcom/ss/android/downloadad/api/dq/dq;->i()Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p2}, Lcom/ss/android/downloadad/api/dq/dq;->k()Lcom/ss/android/download/api/download/DownloadController;

    invoke-interface {p2}, Lcom/ss/android/downloadad/api/dq/dq;->le()Lcom/ss/android/download/api/download/DownloadEventConfig;

    invoke-interface {p2}, Lcom/ss/android/downloadad/api/dq/dq;->s()Ljava/lang/String;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4c6ad8ec -> :sswitch_3
        -0x1a50fb12 -> :sswitch_2
        -0xb155fa2 -> :sswitch_1
        0x15f55bb5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadlib/addownload/d/s;Z)V
    .locals 4

    const-string v0, "onMarketSuccess"

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-string v1, "applink_source"

    invoke-static {p1, v1, p0}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "download_scene"

    invoke-virtual {p2}, Lcom/ss/android/downloadlib/addownload/d/s;->r()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p3

    const-string v1, "market_open_success"

    invoke-virtual {p3, v1, p1, p2}, Lcom/ss/android/downloadlib/p/dq;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    :goto_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object p3

    const-string v1, "check_applink_mode"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    const/4 v1, 0x4

    and-int/2addr p3, v1

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/ss/android/downloadlib/d/s;->dq()Lcom/ss/android/downloadlib/d/s;

    move-result-object p3

    new-instance v2, Lcom/ss/android/downloadlib/d/dq$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/ss/android/downloadlib/d/dq$3;-><init>(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/d/s;Lorg/json/JSONObject;)V

    invoke-virtual {p3, v2}, Lcom/ss/android/downloadlib/d/s;->d(Lcom/ss/android/downloadlib/d/p;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->d()Lcom/ss/android/download/api/config/ox;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    iget-object p0, p2, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p0}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    :goto_2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object p0

    iget-object p1, p2, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(Ljava/lang/String;)Lcom/ss/android/downloadad/api/dq/d;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/ss/android/downloadlib/mn/ig;->dq()Lcom/ss/android/downloadlib/mn/ig;

    move-result-object p1

    sget-object p3, Lcom/ss/android/downloadlib/d/dq;->dq:Ljava/lang/String;

    const-string v2, "\u5546\u5e97\u573a\u666f,\u7f13\u5b58\u4e2d\u5df2\u6709NativeDownloadModel\u8bb0\u5f55,\u8fdb\u884c\u590d\u7528"

    invoke-virtual {p1, p3, v0, v2}, Lcom/ss/android/downloadlib/mn/ig;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/mn/ig;->dq()Lcom/ss/android/downloadlib/mn/ig;

    move-result-object p0

    sget-object p1, Lcom/ss/android/downloadlib/d/dq;->dq:Ljava/lang/String;

    const-string p3, "\u5546\u5e97\u573a\u666f,\u7f13\u5b58\u4e2d\u6ca1\u6709\u76f8\u5e94\u7684NativeDownloadModel,\u9700\u8981\u65b0\u5efa"

    invoke-virtual {p0, p1, v0, p3}, Lcom/ss/android/downloadlib/mn/ig;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/ss/android/downloadad/api/dq/d;

    iget-object p1, p2, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    iget-object p3, p2, Lcom/ss/android/downloadlib/addownload/d/s;->ox:Lcom/ss/android/download/api/download/DownloadEventConfig;

    iget-object v2, p2, Lcom/ss/android/downloadlib/addownload/d/s;->p:Lcom/ss/android/download/api/download/DownloadController;

    invoke-direct {p0, p1, p3, v2}, Lcom/ss/android/downloadad/api/dq/d;-><init>(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V

    :goto_3
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/api/dq/d;->s(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/ss/android/downloadad/api/dq/d;->iw(J)V

    invoke-virtual {p0, v1}, Lcom/ss/android/downloadad/api/dq/d;->ia(I)V

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/api/dq/d;->kk(I)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(Lcom/ss/android/downloadad/api/dq/d;)V

    invoke-static {}, Lcom/ss/android/downloadlib/mn/ig;->dq()Lcom/ss/android/downloadlib/mn/ig;

    move-result-object p1

    sget-object p3, Lcom/ss/android/downloadlib/d/dq;->dq:Ljava/lang/String;

    const-string v1, "\u68c0\u6d4b\u5230\u8df3\u5546\u5e97\u6210\u529f\u4e8b\u4ef6,\u51c6\u5907\u5f00\u59cb\u68c0\u6d4b\u5b89\u88c5\u884c\u4e3a"

    invoke-virtual {p1, p3, v0, v1}, Lcom/ss/android/downloadlib/mn/ig;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ss/android/downloadlib/kk;->dq()Lcom/ss/android/downloadlib/kk;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/ss/android/downloadlib/kk;->dq(Lcom/ss/android/downloadlib/addownload/d/s;Lcom/ss/android/downloadad/api/dq/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_4
    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/ss/android/downloadlib/s/ox;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static dq(J)Z
    .locals 1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/downloadlib/addownload/d/iw;->p(J)Lcom/ss/android/downloadad/api/dq/d;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static dq(Lcom/ss/android/downloadlib/addownload/d/s;)Z
    .locals 10

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getDeepLink()Lcom/ss/android/download/api/model/DeepLink;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/ss/android/download/api/model/DeepLink;->getOpenUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, p0}, Lcom/ss/android/downloadlib/mn/iw;->dq(Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "applink_source"

    const-string v3, "click_by_sdk"

    invoke-static {v1, v2, v3}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v2

    const-string v3, "applink_click"

    invoke-virtual {v2, v3, v1, p0}, Lcom/ss/android/downloadlib/p/dq;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    invoke-static {v0, p0}, Lcom/ss/android/downloadlib/mn/kk;->dq(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)Lcom/ss/android/downloadlib/addownload/d/mn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/downloadlib/addownload/d/mn;->getType()I

    move-result v3

    const-string v4, "by_url"

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v4, v2, v1, p0}, Lcom/ss/android/downloadlib/d/dq;->d(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/d/mn;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v2}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p0}, Lcom/ss/android/downloadlib/mn/kk;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)Lcom/ss/android/downloadlib/addownload/d/mn;

    move-result-object v2

    :cond_2
    iget-wide v6, p0, Lcom/ss/android/downloadlib/addownload/d/s;->dq:J

    invoke-static {v6, v7}, Lcom/ss/android/downloadlib/d/dq;->dq(J)Z

    move-result v0

    const/4 v3, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object v0

    const-string v8, "link_ad_click_event"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    instance-of v8, v0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    if-eqz v8, :cond_3

    check-cast v0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    invoke-virtual {v0, v3}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->setFunnelType(I)Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    iget-wide v8, p0, Lcom/ss/android/downloadlib/addownload/d/s;->dq:J

    invoke-virtual {v0, v8, v9, v6}, Lcom/ss/android/downloadlib/p/dq;->dq(JI)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/ss/android/downloadlib/addownload/d/mn;->getType()I

    move-result v8

    if-eq v8, v7, :cond_7

    const/4 v4, 0x3

    const-string v9, "by_package"

    if-eq v8, v4, :cond_6

    if-eq v8, v3, :cond_5

    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object v1

    const-string v2, "AppLinkClick default"

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/s/ox;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-static {v9, v2, v1, p0}, Lcom/ss/android/downloadlib/d/dq;->dq(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/d/mn;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    goto :goto_3

    :cond_6
    invoke-static {v9, v1, p0}, Lcom/ss/android/downloadlib/d/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    :goto_2
    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    invoke-static {v4, v1, p0}, Lcom/ss/android/downloadlib/d/dq;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    goto :goto_2

    :goto_3
    if-eqz v6, :cond_a

    if-nez v0, :cond_a

    invoke-static {}, Lcom/ss/android/downloadlib/p/ox;->dq()Lcom/ss/android/downloadlib/p/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/p/ox;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/ss/android/downloadlib/p/ox;->dq()Lcom/ss/android/downloadlib/p/ox;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadlib/addownload/d/s;->dq:J

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v3}, Lcom/ss/android/download/api/download/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/p/ox;->d(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-static {}, Lcom/ss/android/downloadlib/p/ox;->dq()Lcom/ss/android/downloadlib/p/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/p/ox;->ox()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadlib/addownload/d/s;->dq:J

    invoke-virtual {v0, v1, v2, v5}, Lcom/ss/android/downloadlib/p/dq;->dq(JI)V

    :cond_a
    return v6
.end method

.method public static dq(Lcom/ss/android/downloadlib/addownload/d/s;I)Z
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/d/s;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "download_scene"

    invoke-static {v0, v2, v1}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v1

    const-string v3, "market_click_open"

    invoke-virtual {v1, v3, v0, p0}, Lcom/ss/android/downloadlib/p/dq;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v3}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p0, v3}, Lcom/ss/android/downloadlib/mn/kk;->dq(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/d/s;Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/d/mn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/d/mn;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "open_market"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/downloadlib/mn/mp;->dq([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/d/mn;->getType()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1

    const/4 v3, 0x6

    const/4 v5, 0x0

    if-eq v4, v3, :cond_0

    const/4 v0, 0x7

    if-eq v4, v0, :cond_2

    return v5

    :cond_0
    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/d/mn;->dq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "error_code"

    invoke-static {v0, v1, p1}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/d/s;->r()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object p1

    const-string v1, "market_open_failed"

    invoke-virtual {p1, v1, v0, p0}, Lcom/ss/android/downloadlib/p/dq;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return v5

    :cond_1
    invoke-static {v3, v0, p0, v6}, Lcom/ss/android/downloadlib/d/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadlib/addownload/d/s;Z)V

    :cond_2
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadlib/addownload/d/s;->dq:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/ss/android/downloadlib/p/dq;->dq(JI)V

    return v6
.end method

.method public static dq(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/d;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->ob()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/kk;->d(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->iw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/d;->dq()Lcom/ss/android/socialbase/downloader/notification/d;

    move-result-object p0

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->gh()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/notification/d;->iw(I)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/mn/iw;->dq(Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)Lorg/json/JSONObject;

    const-string v0, "applink_source"

    const-string v2, "auto_click"

    invoke-static {p0, v0, v2}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    const-string v2, "applink_click"

    invoke-virtual {v0, v2, p1}, Lcom/ss/android/downloadlib/p/dq;->d(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)V

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->iw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/ss/android/downloadlib/mn/kk;->dq(Lcom/ss/android/downloadad/api/dq/d;Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/d/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/d/mn;->getType()I

    move-result v2

    const-string v3, "auto_by_url"

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4

    const/4 v3, 0x3

    const-string v5, "auto_by_package"

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    invoke-static {v5, v0, p0, p1}, Lcom/ss/android/downloadlib/d/dq;->dq(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/d/mn;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return v1

    :cond_3
    invoke-static {v5, p0, p1}, Lcom/ss/android/downloadlib/d/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return v4

    :cond_4
    invoke-static {v3, v0, p0, p1}, Lcom/ss/android/downloadlib/d/dq;->d(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/d/mn;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return v1

    :cond_5
    invoke-static {v3, p0, p1}, Lcom/ss/android/downloadlib/d/dq;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    return v4
.end method

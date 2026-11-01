.class public final Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox;
.super Ljava/lang/Object;


# direct methods
.method private static d(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox$3;-><init>(Ljava/util/Map;)V

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/o;->dq(Ljava/lang/Runnable;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method public static dq(Lcom/ss/android/download/api/download/DownloadEventConfig;Lorg/json/JSONObject;)Lcom/ss/android/download/api/download/DownloadEventConfig;
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    invoke-direct {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;-><init>()V

    invoke-interface {p0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getClickButtonTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickButtonTag(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    invoke-interface {p0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getClickItemTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickItemTag(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    invoke-interface {p0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getClickStartLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickStartLabel(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    invoke-interface {p0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getClickContinueLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickContinueLabel(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    invoke-interface {p0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getClickPauseLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickPauseLabel(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    invoke-interface {p0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getStorageDenyLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setStorageDenyLabel(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    invoke-interface {p0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getClickInstallLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickInstallLabel(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    invoke-interface {p0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->isEnableClickEvent()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setIsEnableClickEvent(Z)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    invoke-interface {p0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->isEnableV3Event()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setIsEnableV3Event(Z)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setExtraEventObject(Ljava/lang/Object;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->build()Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;
    .locals 3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/r;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/r;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x2

    :cond_1
    new-instance p1, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    invoke-direct {p1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setLinkMode(I)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setDownloadMode(I)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setIsEnableBackDialog(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setIsAddToDownloadManage(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->zc()Lcom/bytedance/sdk/openadsdk/core/r/i;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->zc()Lcom/bytedance/sdk/openadsdk/core/r/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/i;->dq()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setEnableAH(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->zc()Lcom/bytedance/sdk/openadsdk/core/r/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/i;->d()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setEnableAM(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    :cond_2
    return-object p1
.end method

.method public static dq(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;
    .locals 1

    new-instance v0, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    invoke-direct {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickButtonTag(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickItemTag(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object p0

    const-string v0, "click_start"

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickStartLabel(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object p0

    const-string v0, "click_continue"

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickContinueLabel(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object p0

    const-string v0, "click_pause"

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickPauseLabel(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object p0

    const-string v0, "download_failed"

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setStorageDenyLabel(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object p0

    const-string v0, "click_install"

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickInstallLabel(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setIsEnableClickEvent(Z)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setIsEnableV3Event(Z)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;
    .locals 8

    if-nez p1, :cond_0

    new-instance p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    invoke-direct {p0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gm()Lcom/bytedance/sdk/openadsdk/core/r/p;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/p;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/p;->p()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    move-object v5, v1

    move-object v6, v2

    move-object v3, p1

    move-object v4, p2

    move-object v2, p0

    goto :goto_0

    :cond_1
    const-string v1, ""

    move-object v5, v1

    move-object v6, v5

    move-object v7, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    :goto_0
    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;
    .locals 8

    const-string v0, "download_start_toast_text"

    const-string v1, "notification_opt_2"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/o/ox/d/dq;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/ox/d/dq;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/dq;->d(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/o/ox/d/dq;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/o/ox/d/dq;

    move-result-object p0

    const-string p2, "open_ad_sdk_download_extra"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/dq;->d()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v2, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    new-instance p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    invoke-direct {p0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setAdId(J)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->wq()Lcom/bytedance/sdk/openadsdk/core/r/ji;

    move-result-object p2

    const/4 v3, 0x0

    if-nez p2, :cond_0

    move-object p2, v3

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->wq()Lcom/bytedance/sdk/openadsdk/core/r/ji;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->dq()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setAppIcon(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/no;->i()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setIsShowNotification(Z)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/no;->i()Z

    move-result p2

    const/4 v4, 0x1

    xor-int/2addr p2, v4

    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setAutoInstallWithoutNotification(Z)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setLogExtra(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setExtra(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setDistinctDir(Z)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setIsAd(Z)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object p0

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox$1;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox$1;-><init>()V

    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setFileUriProvider(Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object p0

    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o/o;->d()Lorg/json/JSONObject;

    move-result-object p2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p2, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v4, :cond_1

    goto :goto_2

    :cond_1
    move v5, v6

    :goto_2
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/r;->gh(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v6

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/op;->iw()Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "cancel_pause_optimise_switch"

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "cancel_pause_optimise_wifi_retain_switch"

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "cancel_pause_optimise_apk_retain_switch"

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "cancel_pause_optimise_download_percent_retain_switch"

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_3

    :catch_1
    nop

    goto :goto_4

    :cond_2
    :goto_3
    const-string v7, "show_pause_continue_toast"

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-ne v6, v4, :cond_3

    invoke-virtual {p0, v4}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setIsShowToast(Z)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    const-string v6, "\u5df2\u5f00\u59cb\u4e0b\u8f7d\uff0c\u518d\u6b21\u70b9\u51fb\u53ef\u6682\u505c\u6216\u53d6\u6d88\u8be5\u4e0b\u8f7d\u4efb\u52a1\u3002"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "is_use_obm_convert"

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/r;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    invoke-virtual {v2, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setDownloadSettings(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p0, p3}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setDownloadUrl(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    :cond_4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0, p4}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setAppName(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    :cond_5
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0, p5}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setPackageName(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    :cond_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p0, v4}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setNeedIndependentProcess(Z)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/no;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setFilePath(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    new-instance p2, Lcom/ss/android/download/api/model/DeepLink;

    invoke-direct {p2}, Lcom/ss/android/download/api/model/DeepLink;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kf()Lcom/bytedance/sdk/openadsdk/core/r/fw;

    move-result-object p3

    if-eqz p3, :cond_a

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/ss/android/download/api/model/DeepLink;->setId(J)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kf()Lcom/bytedance/sdk/openadsdk/core/r/fw;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/r/fw;->dq()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ss/android/download/api/model/DeepLink;->setOpenUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->lk()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ss/android/download/api/model/DeepLink;->setWebTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kf()Lcom/bytedance/sdk/openadsdk/core/r/fw;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/r/fw;->ox()I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_8

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {p2, v3}, Lcom/ss/android/download/api/model/DeepLink;->setWebUrl(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kf()Lcom/bytedance/sdk/openadsdk/core/r/fw;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/r/fw;->ox()I

    move-result p3

    if-ne p3, v4, :cond_9

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kf()Lcom/bytedance/sdk/openadsdk/core/r/fw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/fw;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ss/android/download/api/model/DeepLink;->setWebUrl(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ae()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ss/android/download/api/model/DeepLink;->setWebUrl(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ae()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ss/android/download/api/model/DeepLink;->setWebUrl(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setDeepLink(Lcom/ss/android/download/api/model/DeepLink;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    return-object p0
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;
    .locals 7

    if-nez p2, :cond_0

    new-instance p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    invoke-direct {p0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;-><init>()V

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    invoke-direct {p0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;-><init>()V

    return-object p0

    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->hy()Lcom/bytedance/sdk/openadsdk/core/r/s;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->hy()Lcom/bytedance/sdk/openadsdk/core/r/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/s;->ig()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v6, v0

    const-string v5, ""

    move-object v4, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox;->d(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method public static dq(Ljava/util/Map;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ss/android/download/api/config/IDownloadButtonClickListener;",
            ")V"
        }
    .end annotation

    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v1, 0x1130

    if-lt v0, v1, :cond_2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "downloadButtonClickListener"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public static dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {p4, v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(ZZLcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Z

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Landroid/content/Intent;

    const-string p4, "android.intent.action.VIEW"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "open_url"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    return v0
.end method

.method public static dq(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->h()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p3, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->build()Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    move-result-object v0

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->build()Lcom/ss/android/downloadad/api/download/AdDownloadController;

    move-result-object v1

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox;->dq(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->build()Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v4, "uri"

    invoke-virtual {v3, v4, p0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string v3, "downloadModel"

    invoke-virtual {p0, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string v0, "downloadEventConfig"

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string v0, "downloadController"

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    invoke-direct {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/s;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/s;-><init>()V

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;)V

    invoke-static {p1, p3, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    return p3

    :cond_1
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox;->d(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return p3

    :cond_2
    :goto_0
    return v1
.end method

.method private static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->p(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox$2;

    invoke-direct {v0, p2, p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox$2;-><init>(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-virtual {p3, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

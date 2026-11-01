.class public Lcom/bytedance/sdk/openadsdk/core/o/dq/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/dq/dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/o/dq/dq;-><init>()V

    return-object v0
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;->getExtJson()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const-string v1, "ad_extra_data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "open_ad_sdk_download_extra"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :catchall_0
    return v0
.end method


# virtual methods
.method public checkAutoControl(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    const-string v0, "open_ad_sdk_download_extra"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/dq;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/o/ox/d/dq;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez p1, :cond_3

    :goto_0
    return-void

    :cond_3
    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/o/o;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method public clearAllData(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/iw;->ox(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public execute(ILjava/lang/String;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTHttpCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTHttpCallback;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/o/mn;->dq(ILjava/lang/String;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTHttpCallback;)V

    return-void
.end method

.method public executeLogUpload(Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/o/iw$dq;->dq(Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;Z)Lcom/bytedance/sdk/openadsdk/core/o/iw$dq;

    move-result-object p1

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/o/mn;->dq(Lcom/bytedance/sdk/component/o/kk;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public getAppIsBackground()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->dq()Z

    move-result v0

    return v0
.end method

.method public getDownloadSettings()Lorg/json/JSONObject;
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o/o;->d()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->le()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "enable_app_install_receiver"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public getTTDownloadEventLogger()Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->ji()Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;

    move-result-object v0

    return-object v0
.end method

.method public hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/o/kk;->dq(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public initPath(Z)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o/o;->dq(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isOpenSdkEvent(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o/iw;->dq(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public postBody(Ljava/lang/String;[BLjava/lang/String;Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTHttpCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0, p4}, Lcom/bytedance/sdk/openadsdk/core/o/mn;->dq(Ljava/lang/String;[BLjava/lang/String;ILcom/bytedance/sdk/openadsdk/downloadnew/core/ITTHttpCallback;)V

    return-void
.end method

.method public requestPermission(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTPermissionCallback;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/o/kk;->dq(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTPermissionCallback;)V

    return-void
.end method

.method public showDialogByDelegate(Ljava/lang/ref/WeakReference;ZLcom/bytedance/sdk/openadsdk/downloadnew/core/DialogBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;Z",
            "Lcom/bytedance/sdk/openadsdk/downloadnew/core/DialogBuilder;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/o/ia;->dq(Ljava/lang/ref/WeakReference;ZLcom/bytedance/sdk/openadsdk/downloadnew/core/DialogBuilder;)V

    return-void
.end method

.method public showDialogBySelf(Landroid/app/Activity;ZLcom/bytedance/sdk/openadsdk/downloadnew/core/DialogBuilder;)Landroid/app/AlertDialog;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/o/ia;->dq(Landroid/app/Activity;ZLcom/bytedance/sdk/openadsdk/downloadnew/core/DialogBuilder;)Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

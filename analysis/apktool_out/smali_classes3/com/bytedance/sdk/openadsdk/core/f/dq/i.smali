.class public Lcom/bytedance/sdk/openadsdk/core/f/dq/i;
.super Lcom/bytedance/sdk/component/dq/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/dq/s<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/c;

.field private dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/dq/s;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;->dq:Ljava/lang/String;

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/dq/fw;Lcom/bytedance/sdk/openadsdk/core/c;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "appInfo"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "adInfo"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "playable_style"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "getTemplateInfo"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "getTeMaiAds"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "isViewable"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "getScreenSize"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "getCloseButtonInfo"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "getVolume"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "removeLoading"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "sendReward"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "subscribe_app_ad"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "download_app_ad"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "cancel_download_app_ad"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "unsubscribe_app_ad"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "landscape_click"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "clickEvent"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "renderDidFinish"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "dynamicTrack"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "skipVideo"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "muteVideo"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "changeVideoState"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "getCurrentVideoState"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    const-string v1, "getCurrentVideoState"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "send_temai_product_ids"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    const-string v1, "send_temai_product_ids"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "getMaterialMeta"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    const-string v1, "getMaterialMeta"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "endcard_load"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    const-string v1, "endcard_load"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "pauseWebView"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    const-string v1, "pauseWebView"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "pauseWebViewTimers"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    const-string v1, "pauseWebViewTimers"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "webview_time_track"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    const-string v1, "webview_time_track"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;

    const-string v1, "adInfoStash"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c;)V

    const-string p1, "adInfoStash"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    return-void
.end method


# virtual methods
.method public bridge synthetic dq(Ljava/lang/Object;Lcom/bytedance/sdk/component/dq/iw;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/c$dq;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/core/c$dq;-><init>()V

    const-string v0, "call"

    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/c$dq;->dq:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;->dq:Ljava/lang/String;

    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/c$dq;->ox:Ljava/lang/String;

    iput-object p1, p2, Lcom/bytedance/sdk/openadsdk/core/c$dq;->p:Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/i;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/c$dq;I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

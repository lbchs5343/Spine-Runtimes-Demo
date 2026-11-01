.class public Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/no/dq/dq/ox;


# annotations
.annotation runtime Lcom/bytedance/sdk/component/no/d/d;
.end annotation


# instance fields
.field protected d:Landroid/content/Context;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "context"
    .end annotation
.end field

.field protected dq:Lcom/bytedance/sdk/openadsdk/core/r/j;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "material_meta"
    .end annotation
.end field

.field private f:Lcom/bytedance/sdk/openadsdk/core/video/d/d;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "pip_controller"
    .end annotation
.end field

.field private volatile ia:Z
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "is_open_oppo_market_auto_download"
    .end annotation
.end field

.field private ig:Lcom/ss/android/downloadad/api/download/AdDownloadController;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "download_controller"
    .end annotation
.end field

.field protected iw:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "download_popup_manager"
    .end annotation
.end field

.field private jy:Lorg/json/JSONObject;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "app_info"
    .end annotation
.end field

.field private volatile kk:Z
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "is_click_button"
    .end annotation
.end field

.field private mn:I
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "need_check_compliance"
    .end annotation
.end field

.field private mp:Lcom/ss/android/download/api/download/DownloadModel;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "download_model"
    .end annotation
.end field

.field private no:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "dialog_to_landing_page_convert"
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "download_url"
    .end annotation
.end field

.field protected volatile ox:Z
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "convert_from_landing_page"
    .end annotation
.end field

.field protected p:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "event_tag"
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "download_conf"
    .end annotation
.end field

.field protected s:Lcom/ss/android/download/api/download/DownloadStatusChangeListener;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "download_status_listener"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->ox:Z

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->mn:I

    return-void
.end method

.method private dq()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->d:Landroid/content/Context;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->jy:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d;->d(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r/p;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/p;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->o:Ljava/lang/String;

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->iw:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->ig:Lcom/ss/android/downloadad/api/download/AdDownloadController;

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->mp:Lcom/ss/android/download/api/download/DownloadModel;

    if-nez v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dq(Ljava/util/Map;Ljava/util/Map;Lcom/bytedance/sdk/component/no/dq/dq;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/component/no/dq/dq;",
            ")Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->d:Landroid/content/Context;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->d:Landroid/content/Context;

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->dq()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/no/dq/dq;->d(Ljava/util/Map;)V

    return v0

    :cond_1
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->ox(Ljava/util/Map;)I

    move-result p1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->p:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->iw:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->o:Ljava/lang/String;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->ig:Lcom/ss/android/downloadad/api/download/AdDownloadController;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->mp:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;Ljava/lang/String;Lcom/ss/android/downloadad/api/download/AdDownloadController;Lcom/ss/android/download/api/download/DownloadModel;)V

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->kk:Z

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->d(Z)V

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->ia:Z

    invoke-virtual {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(ZI)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->s:Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Lcom/ss/android/download/api/download/DownloadStatusChangeListener;)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->ox:Z

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Z)V

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->mn:I

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->no:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;)V

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->q:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->q:Ljava/lang/String;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/r/r;

    invoke-direct {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/r/r;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/r;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_2
    :goto_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ig;->f:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-direct {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/d;->dq(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/no/dq/dq;->dq(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/no/dq/dq;->d(Ljava/util/Map;)V

    :goto_1
    return v0
.end method

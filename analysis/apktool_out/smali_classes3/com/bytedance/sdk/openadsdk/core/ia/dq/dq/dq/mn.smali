.class public Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;
.super Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;


# instance fields
.field private no:Lcom/ss/android/download/api/download/DownloadModel;

.field private o:Lcom/ss/android/downloadad/api/download/AdDownloadController;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;Ljava/lang/String;Lcom/ss/android/downloadad/api/download/AdDownloadController;Lcom/ss/android/download/api/download/DownloadModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;-><init>()V

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;->o:Lcom/ss/android/downloadad/api/download/AdDownloadController;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;->no:Lcom/ss/android/download/api/download/DownloadModel;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->ox:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->p:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->s:Ljava/lang/String;

    return-void
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ff()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v2, 0x1900

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->el()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fa()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/e;->dq(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->zi()Lcom/bytedance/sdk/openadsdk/core/r/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/r;->p()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;->o:Lcom/ss/android/downloadad/api/download/AdDownloadController;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$2;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/ss/android/downloadad/api/download/AdDownloadController;->setDownloadMarketInterceptor(Lcom/ss/android/download/api/config/DownloadMarketInterceptor;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;->o:Lcom/ss/android/downloadad/api/download/AdDownloadController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController;->setDownloadMarketInterceptor(Lcom/ss/android/download/api/config/DownloadMarketInterceptor;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;)Lcom/ss/android/downloadad/api/download/AdDownloadController;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;->o:Lcom/ss/android/downloadad/api/download/AdDownloadController;

    return-object p0
.end method


# virtual methods
.method public d(ZI)V
    .locals 0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;->o:Lcom/ss/android/downloadad/api/download/AdDownloadController;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;->d()V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;->o:Lcom/ss/android/downloadad/api/download/AdDownloadController;

    invoke-virtual {p2, p1}, Lcom/ss/android/downloadad/api/download/AdDownloadController;->setEnableOppoAutoDownload(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/ir/op;)Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/ir/op<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/d;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/ir/op;)V

    return-object v0
.end method

.method public dq()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;->o:Lcom/ss/android/downloadad/api/download/AdDownloadController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;->no:Lcom/ss/android/download/api/download/DownloadModel;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq()Z

    move-result v0

    return v0
.end method

.method public ox(I)Z
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;->o:Lcom/ss/android/downloadad/api/download/AdDownloadController;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/download/AdDownloadController;->getDownloadMode()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public p(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;"
        }
    .end annotation

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->ox(Ljava/util/Map;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->gh(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->ox:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox;->dq(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->build()Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox;->dq(Lcom/ss/android/download/api/download/DownloadEventConfig;Lorg/json/JSONObject;)Lcom/ss/android/download/api/download/DownloadEventConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;->no:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v2}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "action_type_button"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "downloadEventConfig"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "downloadController"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;->o:Lcom/ss/android/downloadad/api/download/AdDownloadController;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;->ox(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Ljava/util/Map;Z)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;Ljava/util/Map;I)V

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox;->dq(Ljava/util/Map;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V

    return-object v1
.end method

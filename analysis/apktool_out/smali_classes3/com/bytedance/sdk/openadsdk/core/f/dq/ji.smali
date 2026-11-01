.class public Lcom/bytedance/sdk/openadsdk/core/f/dq/ji;
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
.field private dq:Lcom/bytedance/sdk/openadsdk/core/r/j;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/dq/s;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/ji;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-void
.end method

.method private d(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const-string v0, "canvas"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    return v1
.end method

.method private dq(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 11

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const-string p1, "params is null"

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/ji;->dq(Lorg/json/JSONObject;ILjava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_0
    const-string v2, "image"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/p;->dq(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p1, "imageBase64 to Bitmap error"

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/ji;->dq(Lorg/json/JSONObject;ILjava/lang/String;)V

    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/ji;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v3, :cond_2

    const-string p1, "materialMeta is null"

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/ji;->dq(Lorg/json/JSONObject;ILjava/lang/String;)V

    return-object v0

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x6

    invoke-static {v2, v1, v3}, Lcom/bytedance/sdk/component/utils/p;->dq(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/ji;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "playable_show_status"

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/ji;->d(Ljava/lang/String;)I

    move-result v10

    const/4 v9, 0x1

    invoke-static/range {v4 .. v10}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public static dq(Lcom/bytedance/sdk/component/dq/fw;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/ji;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/ji;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    const-string p1, "reportPlayableScreenshot"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    return-void
.end method

.method private dq(Lorg/json/JSONObject;ILjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "code"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "codeMsg"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
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

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/dq/ji;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/ji;->dq(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

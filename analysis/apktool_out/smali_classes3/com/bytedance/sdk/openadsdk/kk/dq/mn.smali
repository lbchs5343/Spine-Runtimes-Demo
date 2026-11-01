.class public Lcom/bytedance/sdk/openadsdk/kk/dq/mn;
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
.field private dq:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/c;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/dq/s;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/kk/dq/mn;->dq:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/dq/fw;Lcom/bytedance/sdk/openadsdk/core/c;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/kk/dq/mn;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/kk/dq/mn;-><init>(Lcom/bytedance/sdk/openadsdk/core/c;)V

    const-string p1, "startVideoTransform"

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

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/kk/dq/mn;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kk/dq/mn;->dq:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kk/dq/mn;->dq:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/c;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "videoInfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "toX"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    const-string v3, "toY"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    const-string v4, "pivotX"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    const-string v5, "pivotY"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v5, v5

    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(FFFFI)V

    :cond_3
    :goto_0
    return-object p2
.end method

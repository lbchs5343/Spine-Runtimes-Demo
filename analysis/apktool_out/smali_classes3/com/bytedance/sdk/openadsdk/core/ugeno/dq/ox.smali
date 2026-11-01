.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/dq/ox;
.super Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private mp()Lorg/json/JSONObject;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/component/adexpress/d/mp;)Lcom/bytedance/sdk/openadsdk/core/ugeno/dq/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public dq()Lorg/json/JSONObject;
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq/ox;->mp()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public ox()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

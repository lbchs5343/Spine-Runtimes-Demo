.class public Lcom/bytedance/sdk/openadsdk/core/r/i;
.super Ljava/lang/Object;


# instance fields
.field d:I

.field dq:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/i;->dq:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/i;->d:I

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/i;->d:I

    return-void
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/i;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/i;->dq:I

    return-void
.end method

.method public dq()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/i;->dq:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ox()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ah"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/i;->dq:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "am"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/i;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;)V

    return-object v0
.end method

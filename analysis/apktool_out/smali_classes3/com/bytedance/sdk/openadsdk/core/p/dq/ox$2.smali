.class Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/iw/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$2;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$2;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->kx()Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$7;->dq:[I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$2;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->kx()Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    const-string v4, "req_type"

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    :goto_0
    const-string v1, "preload_ad_type"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ad_extra_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

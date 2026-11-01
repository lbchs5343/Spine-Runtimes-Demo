.class public Lcom/bytedance/sdk/openadsdk/core/gh/dq/d;
.super Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox<",
        "Lcom/bytedance/sdk/openadsdk/core/gh/dq/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "plugin_version"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/live/d;->mn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

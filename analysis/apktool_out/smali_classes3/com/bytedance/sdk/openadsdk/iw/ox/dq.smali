.class public abstract Lcom/bytedance/sdk/openadsdk/iw/ox/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/iw/ox/p;


# instance fields
.field private dq:Lcom/bykv/vk/openvk/component/video/api/ox/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/dq;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-object v0
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/dq;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "package"

    const-string v1, "ext_plugin_code"

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/dq;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "pitaya_cache_size"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/dq;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->d()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "pitaya_code"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/dq;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->ox()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "pitaya_msg"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/dq;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

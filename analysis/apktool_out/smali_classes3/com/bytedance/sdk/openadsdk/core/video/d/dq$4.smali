.class Lcom/bytedance/sdk/openadsdk/core/video/d/dq$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/iw/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->uh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->vf(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "is_audio"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ob(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->l(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->e()Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->mn()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    const-string v2, "start"

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->mn()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "ad_extra_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

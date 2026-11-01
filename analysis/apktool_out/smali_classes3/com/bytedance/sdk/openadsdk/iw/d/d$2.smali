.class final Lcom/bytedance/sdk/openadsdk/iw/d/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/iw/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bytedance/sdk/openadsdk/iw/ox/d;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/iw/ox/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/iw/ox/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$2;->dq:Lcom/bytedance/sdk/openadsdk/iw/ox/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$2;->dq:Lcom/bytedance/sdk/openadsdk/iw/ox/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->ox()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$2;->dq:Lcom/bytedance/sdk/openadsdk/iw/ox/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->p()Lcom/bytedance/sdk/openadsdk/iw/ox/p;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$2;->dq:Lcom/bytedance/sdk/openadsdk/iw/ox/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->p()Lcom/bytedance/sdk/openadsdk/iw/ox/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/p;->a_(Lorg/json/JSONObject;)V

    :cond_0
    const-string v1, "ad_extra_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

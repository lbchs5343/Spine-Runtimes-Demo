.class Lcom/bytedance/sdk/openadsdk/core/ig/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/iw/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ig/s;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ig/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ig/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "render_type"

    const-string v2, "ugen"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->dq(Lcom/bytedance/sdk/openadsdk/core/ig/s;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->dq(Lcom/bytedance/sdk/openadsdk/core/ig/s;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->dq(Lcom/bytedance/sdk/openadsdk/core/ig/s;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->no()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "native_lp_tpl_id"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->dq(Lcom/bytedance/sdk/openadsdk/core/ig/s;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/s/dq;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    const-string v1, "ad_extra_data"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->d(Lcom/bytedance/sdk/openadsdk/core/ig/s;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-string v2, "duration"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-void
.end method

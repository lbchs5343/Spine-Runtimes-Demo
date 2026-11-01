.class Lcom/bytedance/sdk/openadsdk/core/ir/d$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/no/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ir/d;->ox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lorg/json/JSONArray;

.field final synthetic dq:Lorg/json/JSONArray;

.field final synthetic ox:J

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/ir/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ir/d;Lorg/json/JSONArray;Lorg/json/JSONArray;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$4;->p:Lcom/bytedance/sdk/openadsdk/core/ir/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$4;->dq:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$4;->d:Lorg/json/JSONArray;

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$4;->ox:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/openadsdk/core/gh/dq/dq;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ara"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$4;->dq:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "hara"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$4;->d:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rt"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$4;->ox:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$4;->p:Lcom/bytedance/sdk/openadsdk/core/ir/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/d;->d(Lcom/bytedance/sdk/openadsdk/core/ir/d;)I

    move-result v1

    const-string v2, "hrc"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$4;->p:Lcom/bytedance/sdk/openadsdk/core/ir/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/d;->mn(Lcom/bytedance/sdk/openadsdk/core/ir/d;)I

    move-result v1

    const-string v2, "drc"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d()Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v1

    const-string v2, "ad_activity_record"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    return-object v0
.end method

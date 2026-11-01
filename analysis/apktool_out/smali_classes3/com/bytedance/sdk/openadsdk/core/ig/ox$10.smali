.class final Lcom/bytedance/sdk/openadsdk/core/ig/ox$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/iw/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ig/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lorg/json/JSONObject;

.field final synthetic dq:J

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/r/j;


# direct methods
.method public constructor <init>(JLorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/ox$10;->dq:J

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ig/ox$10;->d:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ig/ox$10;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "duration"

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/ox$10;->dq:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/ox$10;->d:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/ox$10;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/s/dq;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/ox$10;->d:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_extra_data"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

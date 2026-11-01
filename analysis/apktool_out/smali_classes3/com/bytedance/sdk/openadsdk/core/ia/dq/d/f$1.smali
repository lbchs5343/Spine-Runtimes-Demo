.class Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/no/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/f;->dq(Ljava/util/Map;Ljava/util/Map;Lcom/bytedance/sdk/component/no/dq/dq;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lorg/json/JSONObject;

.field final synthetic dq:I

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/f;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/f;ILorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/f$1;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/f;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/f$1;->dq:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/f$1;->d:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/openadsdk/core/gh/dq/dq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d()Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/f$1;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/f;->d(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/f$1;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/f;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->ia(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/f$1;->dq:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq(I)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/f$1;->d:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    return-object v0
.end method

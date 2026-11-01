.class Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/s$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ox(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

.field final synthetic dq:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$2;->dq:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)Lcom/bytedance/sdk/openadsdk/core/ig/s;

    move-result-object p1

    const-string v0, "template info load fail"

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->dq(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;->dq(I)V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$2;->dq:Lorg/json/JSONObject;

    const-string v1, "creative"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ve()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$2;->dq:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$2;->dq:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

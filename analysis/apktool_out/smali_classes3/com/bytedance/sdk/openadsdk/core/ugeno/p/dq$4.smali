.class Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$4;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->p(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

.field final synthetic dq:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$4;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$4;->dq:Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$4;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$4;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->p(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/h;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/ox;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;Lcom/bytedance/sdk/openadsdk/core/r/ox;)Lcom/bytedance/sdk/openadsdk/core/r/ox;

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$4;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->s(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)Lcom/bytedance/sdk/openadsdk/core/r/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$4;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->s(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)Lcom/bytedance/sdk/openadsdk/core/r/ox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/ox;->iw()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$4;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ip()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$4;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ip()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-string v1, "is_support_func_desc"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$4;->dq:Lorg/json/JSONObject;

    const-string v2, "app"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "download_url"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$4;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->p(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$4;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$4;->dq:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

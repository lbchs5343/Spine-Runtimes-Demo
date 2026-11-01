.class Lcom/bytedance/sdk/openadsdk/core/ji$24;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Z

.field final synthetic ox:Lorg/json/JSONObject;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/ji;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ji;Ljava/lang/String;ZLjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$24;->p:Lcom/bytedance/sdk/openadsdk/core/ji;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/ji$24;->dq:Z

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ji$24;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/ji$24;->ox:Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "NetApiImpl"

    :try_start_0
    const-string v1, ""

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$24;->dq:Z

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$24;->d:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$24;->ox:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/iw;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/iw;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/bytedance/sdk/openadsdk/core/ox/iw;->dq(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_1

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    sget-object v2, Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;->dq:Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;

    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;->dq:Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;

    const-string v3, "response:"

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;->p(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;->dq:Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;->p(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;)V

    return-void
.end method

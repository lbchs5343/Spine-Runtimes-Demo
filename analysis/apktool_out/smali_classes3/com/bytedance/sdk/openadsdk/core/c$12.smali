.class Lcom/bytedance/sdk/openadsdk/core/c$12;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/fw/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/c$dq;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/c$dq;

.field final synthetic dq:Lorg/json/JSONObject;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/c;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/c;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/c$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c$12;->ox:Lcom/bytedance/sdk/openadsdk/core/c;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/c$12;->dq:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/c$12;->d:Lcom/bytedance/sdk/openadsdk/core/c$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ZLjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/c$12;->dq:Lorg/json/JSONObject;

    const-string p3, "creatives"

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c$12;->ox:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/c$12;->d:Lcom/bytedance/sdk/openadsdk/core/c$dq;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/c$dq;->d:Ljava/lang/String;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/c$12;->dq:Lorg/json/JSONObject;

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/c;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c$12;->ox:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/c$12;->d:Lcom/bytedance/sdk/openadsdk/core/c$dq;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/c$dq;->d:Ljava/lang/String;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/c$12;->dq:Lorg/json/JSONObject;

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/c;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

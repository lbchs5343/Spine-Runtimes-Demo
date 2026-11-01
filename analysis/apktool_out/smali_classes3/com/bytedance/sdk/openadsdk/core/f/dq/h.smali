.class public Lcom/bytedance/sdk/openadsdk/core/f/dq/h;
.super Lcom/bytedance/sdk/component/dq/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/dq/s<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/dq/s;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/h;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/d;

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/dq/fw;Lcom/bytedance/sdk/openadsdk/core/ugeno/d;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/h;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/h;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/d;)V

    const-string p1, "RendUgenDownloadDialogState"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    return-void
.end method

.method private dq(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/h;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/h;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/d;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/d;->dq()V

    return-void

    :cond_1
    const-string v1, "errorMsg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/h;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/d;

    invoke-interface {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/d;->dq(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic dq(Ljava/lang/Object;Lcom/bytedance/sdk/component/dq/iw;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/dq/h;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/h;->dq(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/dq/h;->ox()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public ox()Lorg/json/JSONObject;
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

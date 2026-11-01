.class public Lcom/bytedance/sdk/openadsdk/core/f/dq/dq;
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
.field private d:Landroid/content/Context;

.field private dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/dq/s;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/dq;->dq:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/dq;->d:Landroid/content/Context;

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/dq/fw;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/dq;

    const-string v1, "closeView"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/dq;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

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

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/dq/dq;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/dq;->dq:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "closeView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/dq;->d:Landroid/content/Context;

    const-string v0, "success"

    if-eqz p2, :cond_1

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object p1

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object p1
.end method

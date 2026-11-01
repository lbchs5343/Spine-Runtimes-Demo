.class final Lcom/bytedance/sdk/openadsdk/core/le/d$3;
.super Lcom/bytedance/sdk/component/kk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/le/d;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/le/d$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/le/d$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/le/d$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/le/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/le/d$dq;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/kk/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->ia()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/le/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/le/d$dq;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/le/d$dq;->dq(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/le/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/le/d$dq;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->dq()I

    move-result v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->d()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/le/d$dq;->dq(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/le/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/le/d$dq;

    if-eqz p1, :cond_0

    const/16 v0, 0x259

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/le/d$dq;->dq(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

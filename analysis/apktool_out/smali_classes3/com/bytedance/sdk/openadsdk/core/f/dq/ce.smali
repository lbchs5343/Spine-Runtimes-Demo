.class public Lcom/bytedance/sdk/openadsdk/core/f/dq/ce;
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
.field private dq:Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/dq/s;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/ce;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/dq/fw;Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/ce;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/ce;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;)V

    const-string p1, "UgenDownloadDialogInteraction"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    return-void
.end method

.method private dq(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/ce;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "InteractionType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/ce;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;->p(Landroid/app/Dialog;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/ce;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;->d(Landroid/app/Dialog;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/ce;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;->dq()V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/ce;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;->dq(Landroid/app/Dialog;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/ce;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;->ox(Landroid/app/Dialog;)V

    :cond_6
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

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/dq/ce;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)Lorg/json/JSONObject;

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

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/ce;->dq(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/dq/ce;->ox()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public ox()Lorg/json/JSONObject;
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

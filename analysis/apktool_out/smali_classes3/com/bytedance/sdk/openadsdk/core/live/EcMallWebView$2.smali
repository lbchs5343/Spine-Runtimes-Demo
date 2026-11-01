.class Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/fw/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;->dq(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;

.field final synthetic dq:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView$2;->d:Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView$2;->dq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView$2;->d:Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;->dq(Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView$2;->d:Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;->dq(Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ff()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e;->dq(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;->dq(ILjava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string v0, "EcMallWebView"

    const-string v1, "onSendReward failed meta null"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView$2;->dq:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView$2;->d:Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;->dq(Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method public dq(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ox()V
    .locals 0

    return-void
.end method

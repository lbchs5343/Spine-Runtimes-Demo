.class Lcom/bytedance/sdk/openadsdk/core/f/dq/wn$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/f/dq/wn;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/f/dq/wn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f/dq/wn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/wn$2;->dq:Lcom/bytedance/sdk/openadsdk/core/f/dq/wn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/wn$2;->dq:Lcom/bytedance/sdk/openadsdk/core/f/dq/wn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/dq/wn;->dq(Lcom/bytedance/sdk/openadsdk/core/f/dq/wn;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/wn$2;->dq:Lcom/bytedance/sdk/openadsdk/core/f/dq/wn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/dq/wn;->dq(Lcom/bytedance/sdk/openadsdk/core/f/dq/wn;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/wn$2;->dq:Lcom/bytedance/sdk/openadsdk/core/f/dq/wn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/dq/wn;->d(Lcom/bytedance/sdk/openadsdk/core/f/dq/wn;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->ox()Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/kk;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/kk;->d()V

    :cond_1
    return-void
.end method

.class Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/fw/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$7;->dq:Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$7;->dq:Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$7;->dq:Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->o()V

    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$7;->dq:Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$7;->dq:Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->ia()V

    return-void
.end method

.class Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/fw/dq;


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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$6;->dq:Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$6;->dq:Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$6;->dq:Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$6;->dq:Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;)I

    move-result v0

    :cond_2
    return v0
.end method

.method public dq()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$6;->dq:Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$6;->dq:Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$6;->dq:Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->s(Landroid/content/Context;)I

    move-result v0

    :cond_2
    return v0
.end method

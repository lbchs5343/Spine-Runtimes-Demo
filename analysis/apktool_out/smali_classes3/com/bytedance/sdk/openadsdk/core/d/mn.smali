.class public abstract Lcom/bytedance/sdk/openadsdk/core/d/mn;
.super Lcom/bytedance/sdk/openadsdk/core/d/dq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/d/dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public abstract d(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V
.end method

.method public dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/d;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->kk:Lcom/bytedance/sdk/openadsdk/core/d/dq/p;

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/mn;->d(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    :cond_2
    :goto_0
    return-void
.end method

.class public Lcom/bytedance/sdk/component/adexpress/dq/d/p;
.super Ljava/lang/Object;


# direct methods
.method public static dq(FFFF)Landroid/view/animation/Interpolator;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/widget/dq;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/widget/dq;-><init>(FFFF)V

    return-object v0
.end method

.method public static dq()Ljava/io/File;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->ox()Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.class Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$1;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/d;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/d;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/view/View;FF)V
    .locals 3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/FullRewardExpressView;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i()Z

    move-result p2

    const/4 p3, 0x0

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->le:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    iget-object v1, p2, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/d;

    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/d;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/FullRewardExpressView;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->ox:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/FullRewardExpressView;->dq(Landroid/view/ViewGroup;Z)V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/FullRewardExpressView;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getDynamicShowType()I

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;I)I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;Z)Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->p()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->wp:Lcom/bytedance/sdk/openadsdk/widget/TTProgressBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

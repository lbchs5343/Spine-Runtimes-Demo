.class Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->iw()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    return-void
.end method

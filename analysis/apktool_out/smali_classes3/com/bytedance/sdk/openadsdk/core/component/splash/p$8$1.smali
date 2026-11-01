.class Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->iw(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->iw(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->iw(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x190

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->mn(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->mn(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->mn(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->ia(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->ia(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->ia(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->kk(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->kk(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->kk(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;->dq(J)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.class Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$3;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;->ox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;->p(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;->s(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;)Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->kk()V

    return-void
.end method

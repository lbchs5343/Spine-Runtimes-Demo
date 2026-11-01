.class Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1;

.field final synthetic dq:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1;Landroid/view/animation/TranslateAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1$2;->dq:Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1;->dq:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1$2$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1$2;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/SmallSlideView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/SmallSlideView;->dq()V

    return-void
.end method

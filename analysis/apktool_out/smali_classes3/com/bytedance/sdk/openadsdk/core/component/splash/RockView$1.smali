.class Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView;

.field final synthetic dq:Landroid/view/animation/RotateAnimation;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView;Landroid/view/animation/RotateAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView$1;->dq:Landroid/view/animation/RotateAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView$1$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView$1;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

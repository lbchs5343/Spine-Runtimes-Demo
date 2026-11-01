.class Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView$1;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/RockView$1;->dq:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

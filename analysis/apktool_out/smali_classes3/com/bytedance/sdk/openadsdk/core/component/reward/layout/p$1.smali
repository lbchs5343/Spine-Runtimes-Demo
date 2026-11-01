.class Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;Z)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;)Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/RewardGuideSlideUp;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;)Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/RewardGuideSlideUp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/RewardGuideSlideUp;->getSlideUpAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;Z)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;->mn:Landroid/view/ViewGroup;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p$1$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p$1;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

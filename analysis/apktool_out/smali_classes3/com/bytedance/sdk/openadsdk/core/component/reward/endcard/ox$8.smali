.class Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/component/reward/view/PlayableEndcardFrameLayout$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->o(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/view/lp/RewardLpBottomView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->o(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/view/lp/RewardLpBottomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/lp/RewardLpBottomView;->d()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->o(I)V

    :cond_1
    return-void
.end method

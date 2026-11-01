.class Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$4;->dq(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$4;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$4;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$4$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$4$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$4;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->mn(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$4$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$4;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;)Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->fw()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$4$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$4;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;)Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$4$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$4;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const-string v2, "tt_ecomm_page_reward_acquire"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/r;->dq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->dq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$4$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$4;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->p(I)V

    return-void
.end method

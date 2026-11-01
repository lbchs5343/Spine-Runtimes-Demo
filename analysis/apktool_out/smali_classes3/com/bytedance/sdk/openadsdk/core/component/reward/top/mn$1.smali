.class Lcom/bytedance/sdk/openadsdk/core/component/reward/top/mn$1;
.super Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/top/mn;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/top/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/mn;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/mn;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->s:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->jy()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/mn;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->s:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->er()Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/mn$1$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/mn$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/top/mn$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

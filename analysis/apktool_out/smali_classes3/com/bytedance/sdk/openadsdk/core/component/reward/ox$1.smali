.class Lcom/bytedance/sdk/openadsdk/core/component/reward/ox$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->dq(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    const-string v2, "rewarded_video"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o/s;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;)Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)V

    return-void
.end method

.class Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->dq(Ljava/util/Map;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/view/View;

.field final synthetic dq:Ljava/util/Map;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;Ljava/util/Map;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;->dq:Ljava/util/Map;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(I)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;)Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->d()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->iw(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)V

    return-void
.end method

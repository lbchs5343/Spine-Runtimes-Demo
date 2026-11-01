.class Lcom/bytedance/sdk/openadsdk/core/component/reward/p/iw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/p/iw;->ia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/iw;

.field final synthetic dq:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/iw;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/iw$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/iw;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/iw$1;->dq:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/iw$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/iw;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->no(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/iw$1;->dq:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/iw$1;->dq:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/iw$1;->dq:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/iw$1;->dq:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/iw$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/iw;

    iget v5, v5, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->ox:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->d()Z

    move-result v5

    if-nez v5, :cond_0

    add-int/2addr v3, v0

    add-int/2addr v4, v0

    :cond_0
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/iw$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/iw;

    iget v5, v5, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->ox:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->d()Z

    move-result v5

    if-nez v5, :cond_1

    add-int/2addr v1, v0

    add-int/2addr v2, v0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/iw$1;->dq:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

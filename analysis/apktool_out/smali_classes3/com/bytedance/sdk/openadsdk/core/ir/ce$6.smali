.class final Lcom/bytedance/sdk/openadsdk/core/ir/ce$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/ir/ce$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ir/ce$dq;

.field final synthetic dq:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/ir/ce$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ce$6;->dq:Landroid/view/View;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ce$6;->d:Lcom/bytedance/sdk/openadsdk/core/ir/ce$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ce$6;->dq:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ce$6;->d:Lcom/bytedance/sdk/openadsdk/core/ir/ce$dq;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ce$6;->dq:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce$dq;->dq(Landroid/view/View;)V

    :cond_0
    return-void
.end method

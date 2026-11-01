.class Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;II)V

    :cond_1
    :goto_0
    return-void
.end method

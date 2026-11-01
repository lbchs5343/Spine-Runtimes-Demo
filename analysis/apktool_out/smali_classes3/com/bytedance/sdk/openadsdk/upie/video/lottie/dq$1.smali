.class Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

.field final synthetic dq:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$1;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$1;->dq:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$1;->dq:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$1;->dq:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$1;->dq:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$1;->dq:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$1;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$1;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->d(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v0

    int-to-float v4, v1

    div-float v5, v3, v4

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$1;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->d(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I

    move-result v6

    if-lez v6, :cond_0

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_0

    div-float/2addr v3, v2

    float-to-int v1, v3

    goto :goto_0

    :cond_0
    mul-float v4, v4, v2

    float-to-int v0, v4

    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$1;->dq:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$1;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ox(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Lg/gkb;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$1;->dq:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$1;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ox(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Lg/gkb;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

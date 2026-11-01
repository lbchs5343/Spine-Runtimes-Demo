.class public Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;
.super Lcom/bytedance/sdk/component/widget/SSWebView;


# instance fields
.field private d:F

.field private dq:Z

.field private ox:Z

.field private p:Landroid/view/ViewParent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->dq:Z

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->d:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->ox:Z

    return-void
.end method


# virtual methods
.method public d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->p:Landroid/view/ViewParent;

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->ig()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->mp()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->dq:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->mp()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->ig()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->ig()V

    return-void
.end method

.method public ig()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->ox:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->p:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->ox:Z

    return-void
.end method

.method public mp()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->ox:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->p:Landroid/view/ViewParent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->ox:Z

    return-void
.end method

.method public onOverScrolled(IIZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onOverScrolled(IIZZ)V

    if-nez p2, :cond_0

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->dq:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->dq:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->p:Landroid/view/ViewParent;

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->p:Landroid/view/ViewParent;

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->d:F

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->d:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v4, v0, v1

    if-lez v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->d(Z)V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->d(Z)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->d:F

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->ig()V

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->ox:Z

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->ig()V

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/widget/SSWebViewVideoPage;->ox:Z

    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

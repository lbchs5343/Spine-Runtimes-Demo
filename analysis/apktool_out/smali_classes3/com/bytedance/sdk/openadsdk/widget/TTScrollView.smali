.class public Lcom/bytedance/sdk/openadsdk/widget/TTScrollView;
.super Landroid/widget/ScrollView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/widget/TTScrollView$dq;
    }
.end annotation


# instance fields
.field private d:Z

.field private dq:I

.field private ox:Lcom/bytedance/sdk/openadsdk/widget/TTScrollView$dq;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/widget/TTScrollView;->d:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/widget/TTScrollView;->p:Z

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/widget/TTScrollView;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/widget/TTScrollView;->dq:I

    return p0
.end method


# virtual methods
.method public dq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/widget/TTScrollView;->p:Z

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    move-object p1, p0

    iget-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/widget/TTScrollView;->d:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    :try_start_0
    iput-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/widget/TTScrollView;->d:Z

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p2, v0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "onLayout error"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TTScrollView"

    invoke-static {p3, p2}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOverScrolled(IIZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/widget/TTScrollView;->dq:I

    new-instance p1, Lcom/bytedance/sdk/openadsdk/widget/TTScrollView$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/widget/TTScrollView$3;-><init>(Lcom/bytedance/sdk/openadsdk/widget/TTScrollView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/widget/TTScrollView;->dq:I

    if-ge v0, v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/widget/TTScrollView;->dq:I

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-le v0, v2, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/widget/TTScrollView$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/widget/TTScrollView$1;-><init>(Lcom/bytedance/sdk/openadsdk/widget/TTScrollView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/widget/TTScrollView$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/widget/TTScrollView$2;-><init>(Lcom/bytedance/sdk/openadsdk/widget/TTScrollView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/widget/TTScrollView;->ox:Lcom/bytedance/sdk/openadsdk/widget/TTScrollView$dq;

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/widget/TTScrollView;->p:Z

    if-eq v1, v2, :cond_3

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/widget/TTScrollView$dq;->dq(Z)V

    :cond_3
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/widget/TTScrollView;->p:Z

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setListener(Lcom/bytedance/sdk/openadsdk/widget/TTScrollView$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/widget/TTScrollView;->ox:Lcom/bytedance/sdk/openadsdk/widget/TTScrollView$dq;

    return-void
.end method

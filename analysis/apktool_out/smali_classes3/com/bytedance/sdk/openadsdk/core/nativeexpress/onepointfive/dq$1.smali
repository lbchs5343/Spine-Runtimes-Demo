.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq;->dq(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/LinearLayout$LayoutParams;

.field final synthetic dq:Landroid/widget/LinearLayout$LayoutParams;

.field final synthetic ox:Landroid/widget/LinearLayout$LayoutParams;

.field final synthetic p:Landroid/view/View;

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq$1;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq$1;->dq:Landroid/widget/LinearLayout$LayoutParams;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq$1;->d:Landroid/widget/LinearLayout$LayoutParams;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq$1;->ox:Landroid/widget/LinearLayout$LayoutParams;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq$1;->p:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq$1;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/LoadingMoreView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/LoadingMoreView;->setMoveSpace(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq$1;->dq:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float v1, v1, v2

    float-to-int v0, v1

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq$1;->d:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/2addr v0, v1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq$1;->ox:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/2addr v0, v1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq$1;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq;)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq$1;->dq:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq$1;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq;)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq$1;->d:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq$1;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq;->p(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq;)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq$1;->ox:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/dq$1;->p:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method

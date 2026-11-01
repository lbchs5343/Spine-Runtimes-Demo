.class Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;->setRatio(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup$2;->dq:Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup$2;->dq:Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;

    iget-boolean v1, v0, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;->mn:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;->dq(Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;)Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlide;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup$2;->dq:Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;

    iget v1, v1, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;->p:F

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlide;->dq(F)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup$2;->dq:Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;

    iget-object v0, v0, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;->dq:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup$2;->dq:Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;

    iget v3, v1, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;->p:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float v2, v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup$2;->dq:Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;

    iget-object v1, v1, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;->dq:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup$2;->dq:Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup$2;->dq:Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup$2;->dq:Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;

    iget v5, v4, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;->p:F

    mul-float v3, v3, v5

    sub-float/2addr v1, v3

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x64

    iput v1, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup$2;->dq:Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup$2;->dq:Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;

    iget v5, v4, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;->p:F

    mul-float v3, v3, v5

    sub-float/2addr v1, v3

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x64

    iput v1, v0, Landroid/graphics/Point;->y:I

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v3, v5, v1

    if-lez v3, :cond_1

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-double v5, v3

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    iget-object v7, p0, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup$2;->dq:Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;

    iget v8, v7, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;->p:F

    float-to-double v8, v8

    const-wide v10, 0x3fd3333333333333L    # 0.3

    sub-double/2addr v8, v10

    mul-double v8, v8, v3

    sub-double/2addr v5, v8

    double-to-int v3, v5

    iput v3, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-double v3, v3

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    iget-object v7, p0, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup$2;->dq:Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;

    iget v7, v7, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;->p:F

    float-to-double v7, v7

    sub-double/2addr v7, v10

    mul-double v7, v7, v5

    add-double/2addr v7, v3

    double-to-int v3, v7

    iput v3, v0, Landroid/graphics/Point;->y:I

    :cond_1
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup$2;->dq:Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;

    iget-object v3, v3, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;->d:Lcom/bytedance/sdk/component/adexpress/widget/BookPageView;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/adexpress/widget/BookPageView;->dq(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup$2;->dq:Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;

    iget-object v3, v0, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;->d:Lcom/bytedance/sdk/component/adexpress/widget/BookPageView;

    iget v0, v0, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;->p:F

    sub-float/2addr v0, v1

    sub-float/2addr v2, v0

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup$2;->dq:Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;->dq(Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;)Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlide;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup$2;->dq:Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;

    iget-object v1, v1, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlideGroup;->d:Lcom/bytedance/sdk/component/adexpress/widget/BookPageView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/widget/BookPageView;->getFilterAreaPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/widget/ImageFlipSlide;->dq(Landroid/graphics/Path;)V

    return-void
.end method

.class public final Lg/fls;
.super Landroid/widget/FrameLayout;


# instance fields
.field public a:Lg/aok;

.field public b:Landroid/content/Context;

.field public c:D

.field public d:F

.field public e:Landroid/widget/LinearLayout;

.field public f:F

.field public g:F

.field public h:Landroid/widget/LinearLayout;


# direct methods
.method private getStarImageView()Landroid/widget/ImageView;
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lg/fls;->f:F

    float-to-int v2, v2

    iget v3, p0, Lg/fls;->g:F

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lg/fls;->d:F

    float-to-int v3, v2

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/4 v2, 0x1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method public final i(DIIFI)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lg/fls;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lg/fls;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lg/fls;->b:Landroid/content/Context;

    invoke-static {v2, p5}, Lg/dxo;->f(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lg/fls;->f:F

    invoke-static {v2, p5}, Lg/dxo;->f(Landroid/content/Context;F)F

    move-result p5

    float-to-int p5, p5

    int-to-float p5, p5

    iput p5, p0, Lg/fls;->g:F

    iput-wide p1, p0, Lg/fls;->c:D

    int-to-float p1, p6

    iput p1, p0, Lg/fls;->d:F

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    const-string p5, "drawable"

    const-string p6, "tt_ugen_rating_star"

    const/4 v3, 0x5

    if-ge p2, v3, :cond_0

    invoke-direct {p0}, Lg/fls;->getStarImageView()Landroid/widget/ImageView;

    move-result-object v3

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {v2, p6, p5}, Lg/acw;->as(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p5

    invoke-virtual {v3, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object p5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, p3, p5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, v3, :cond_1

    invoke-direct {p0}, Lg/fls;->getStarImageView()Landroid/widget/ImageView;

    move-result-object p2

    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {v2, p6, p5}, Lg/acw;->as(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lg/fls;->a:Lg/aok;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/eun;->mn()V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lg/fls;->a:Lg/aok;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/eun;->ia()V

    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    iget-object v0, p0, Lg/fls;->a:Lg/aok;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3, p4, p5}, Lg/eun;->dq(IIII)V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 6

    iget-object v0, p0, Lg/fls;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lg/fls;->a:Lg/aok;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lg/eun;->dq(II)[I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    iget-wide p1, p0, Lg/fls;->c:D

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    iget v1, p0, Lg/fls;->d:F

    add-float v2, v1, v1

    iget v3, p0, Lg/fls;->f:F

    add-float/2addr v2, v3

    float-to-double v4, v2

    mul-double v4, v4, p1

    float-to-double v1, v1

    add-double/2addr v4, v1

    iget-wide v1, p0, Lg/fls;->c:D

    sub-double/2addr v1, p1

    float-to-double p1, v3

    mul-double v1, v1, p1

    add-double/2addr v1, v4

    iget-object p1, p0, Lg/fls;->h:Landroid/widget/LinearLayout;

    double-to-int p2, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lg/fls;->a:Lg/aok;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lg/eun;->d(IIII)V

    :cond_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lg/fls;->a:Lg/aok;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lg/eun;->dq(Z)V

    :cond_0
    return-void
.end method

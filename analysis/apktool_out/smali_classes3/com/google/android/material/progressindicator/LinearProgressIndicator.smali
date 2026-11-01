.class public Lcom/google/android/material/progressindicator/LinearProgressIndicator;
.super Lg/gqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/gqz;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const v0, 0x7f040322

    const v1, 0x7f130503

    invoke-direct {p0, p1, p2, v0, v1}, Lg/gqz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lg/dpx;

    iget-object p2, p0, Lg/gqz;->k:Lg/dzw;

    check-cast p2, Lg/cvs;

    invoke-direct {p1, p2}, Lg/elw;-><init>(Lg/dzw;)V

    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p1, Lg/dpx;->f:F

    new-instance v0, Landroid/util/Pair;

    new-instance v1, Lg/axy;

    invoke-direct {v1}, Lg/axy;-><init>()V

    new-instance v2, Lg/axy;

    invoke-direct {v2}, Lg/axy;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p1, Lg/dpx;->c:Landroid/util/Pair;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lg/fkr;

    iget v2, p2, Lg/cvs;->a:I

    if-nez v2, :cond_0

    new-instance v2, Lg/cmj;

    invoke-direct {v2, p2}, Lg/cmj;-><init>(Lg/cvs;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lg/fxk;

    invoke-direct {v2, v0, p2}, Lg/fxk;-><init>(Landroid/content/Context;Lg/cvs;)V

    :goto_0
    invoke-direct {v1, v0, p2, p1, v2}, Lg/fkr;-><init>(Landroid/content/Context;Lg/dzw;Lg/elw;Lg/cgo;)V

    invoke-virtual {p0, v1}, Lg/gqz;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lg/glg;

    invoke-direct {v1, v0, p2, p1}, Lg/glg;-><init>(Landroid/content/Context;Lg/dzw;Lg/elw;)V

    invoke-virtual {p0, v1}, Lg/gqz;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/gqz;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Lg/dzw;
    .locals 8

    new-instance v0, Lg/cvs;

    const v1, 0x7f040322

    const v2, 0x7f130503

    invoke-direct {v0, p1, p2, v1, v2}, Lg/dzw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v1, 0x0

    new-array v7, v1, [I

    const v5, 0x7f040322

    const v6, 0x7f130503

    invoke-static {p1, p2, v5, v6}, Lg/eyt;->bn(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v4, Lg/git;->c:[I

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lg/eyt;->ap(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Lg/cvs;->a:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Lg/cvs;->f:I

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iget v3, v0, Lg/dzw;->s:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lg/cvs;->i:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lg/cvs;->e:Ljava/lang/Integer;

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    if-eqz v3, :cond_2

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    iget v3, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    iget v4, v0, Lg/dzw;->s:I

    div-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lg/cvs;->h:I

    iput-boolean v1, v0, Lg/cvs;->c:Z

    iput-boolean p2, v0, Lg/cvs;->d:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    if-ne v4, v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v3, v2, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v0, Lg/cvs;->b:F

    iput-boolean p2, v0, Lg/cvs;->c:Z

    iput-boolean p2, v0, Lg/cvs;->d:Z

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Lg/cvs;->j()V

    iget p1, v0, Lg/cvs;->f:I

    if-ne p1, p2, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, v0, Lg/cvs;->g:Z

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    if-eqz v0, :cond_0

    check-cast v0, Lg/cvs;

    iget v0, v0, Lg/cvs;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lg/gqz;->b(I)V

    return-void
.end method

.method public getIndeterminateAnimationType()I
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    check-cast v0, Lg/cvs;

    iget v0, v0, Lg/cvs;->a:I

    return v0
.end method

.method public getIndicatorDirection()I
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    check-cast v0, Lg/cvs;

    iget v0, v0, Lg/cvs;->f:I

    return v0
.end method

.method public getTrackInnerCornerRadius()I
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    check-cast v0, Lg/cvs;

    iget v0, v0, Lg/cvs;->h:I

    return v0
.end method

.method public getTrackStopIndicatorPadding()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    check-cast v0, Lg/cvs;

    iget-object v0, v0, Lg/cvs;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTrackStopIndicatorSize()I
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    check-cast v0, Lg/cvs;

    iget v0, v0, Lg/cvs;->i:I

    return v0
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lg/gqz;->onLayout(ZIIII)V

    move-object p1, p0

    iget-object p2, p1, Lg/gqz;->k:Lg/dzw;

    move-object p3, p2

    check-cast p3, Lg/cvs;

    move-object p4, p2

    check-cast p4, Lg/cvs;

    iget p4, p4, Lg/cvs;->f:I

    const/4 p5, 0x1

    if-eq p4, p5, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p4

    if-ne p4, p5, :cond_0

    move-object p4, p2

    check-cast p4, Lg/cvs;

    iget p4, p4, Lg/cvs;->f:I

    const/4 v0, 0x2

    if-eq p4, v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p4

    if-nez p4, :cond_1

    check-cast p2, Lg/cvs;

    iget p2, p2, Lg/cvs;->f:I

    const/4 p4, 0x3

    if-ne p2, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    :cond_2
    :goto_0
    iput-boolean p5, p3, Lg/cvs;->g:Z

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    add-int/2addr p4, p3

    sub-int/2addr p1, p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    add-int/2addr p4, p3

    sub-int/2addr p2, p4

    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    invoke-virtual {p0}, Lg/gqz;->getProgressDrawable()Lg/glg;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-void
.end method

.method public setIndeterminateAnimationType(I)V
    .locals 3

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    move-object v1, v0

    check-cast v1, Lg/cvs;

    iget v1, v1, Lg/cvs;->a:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lg/gqz;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    move-object v1, v0

    check-cast v1, Lg/cvs;

    iput p1, v1, Lg/cvs;->a:I

    move-object v1, v0

    check-cast v1, Lg/cvs;

    invoke-virtual {v1}, Lg/cvs;->j()V

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object p1

    new-instance v1, Lg/cmj;

    check-cast v0, Lg/cvs;

    invoke-direct {v1, v0}, Lg/cmj;-><init>(Lg/cvs;)V

    iput-object v1, p1, Lg/fkr;->u:Lg/cgo;

    iput-object p1, v1, Lg/cgo;->aa:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object p1

    new-instance v1, Lg/fxk;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v0, Lg/cvs;

    invoke-direct {v1, v2, v0}, Lg/fxk;-><init>(Landroid/content/Context;Lg/cvs;)V

    iput-object v1, p1, Lg/fkr;->u:Lg/cgo;

    iput-object p1, v1, Lg/cgo;->aa:Ljava/lang/Object;

    :goto_1
    invoke-virtual {p0}, Lg/gqz;->p()V

    invoke-virtual {p0}, Lg/gqz;->invalidate()V

    return-void
.end method

.method public varargs setIndicatorColor([I)V
    .locals 0

    invoke-super {p0, p1}, Lg/gqz;->setIndicatorColor([I)V

    iget-object p1, p0, Lg/gqz;->k:Lg/dzw;

    check-cast p1, Lg/cvs;

    invoke-virtual {p1}, Lg/cvs;->j()V

    return-void
.end method

.method public setIndicatorDirection(I)V
    .locals 4

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    move-object v1, v0

    check-cast v1, Lg/cvs;

    iput p1, v1, Lg/cvs;->f:I

    move-object v1, v0

    check-cast v1, Lg/cvs;

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    if-ne v3, v2, :cond_0

    check-cast v0, Lg/cvs;

    iget v0, v0, Lg/cvs;->f:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    iput-boolean v2, v1, Lg/cvs;->g:Z

    invoke-virtual {p0}, Lg/gqz;->invalidate()V

    return-void
.end method

.method public setTrackCornerRadius(I)V
    .locals 0

    invoke-super {p0, p1}, Lg/gqz;->setTrackCornerRadius(I)V

    iget-object p1, p0, Lg/gqz;->k:Lg/dzw;

    check-cast p1, Lg/cvs;

    invoke-virtual {p1}, Lg/cvs;->j()V

    invoke-virtual {p0}, Lg/gqz;->invalidate()V

    return-void
.end method

.method public setTrackInnerCornerRadius(I)V
    .locals 4

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    move-object v1, v0

    check-cast v1, Lg/cvs;

    iget v1, v1, Lg/cvs;->h:I

    if-eq v1, p1, :cond_0

    move-object v1, v0

    check-cast v1, Lg/cvs;

    int-to-float p1, p1

    move-object v2, v0

    check-cast v2, Lg/cvs;

    iget v2, v2, Lg/dzw;->s:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v1, Lg/cvs;->h:I

    move-object p1, v0

    check-cast p1, Lg/cvs;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lg/cvs;->c:Z

    move-object p1, v0

    check-cast p1, Lg/cvs;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lg/cvs;->d:Z

    check-cast v0, Lg/cvs;

    invoke-virtual {v0}, Lg/cvs;->j()V

    invoke-virtual {p0}, Lg/gqz;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackInnerCornerRadiusFraction(F)V
    .locals 3

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    move-object v1, v0

    check-cast v1, Lg/cvs;

    iget v1, v1, Lg/cvs;->b:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lg/cvs;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, v1, Lg/cvs;->b:F

    move-object p1, v0

    check-cast p1, Lg/cvs;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lg/cvs;->c:Z

    move-object p1, v0

    check-cast p1, Lg/cvs;

    iput-boolean v1, p1, Lg/cvs;->d:Z

    check-cast v0, Lg/cvs;

    invoke-virtual {v0}, Lg/cvs;->j()V

    invoke-virtual {p0}, Lg/gqz;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackStopIndicatorPadding(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    move-object v1, v0

    check-cast v1, Lg/cvs;

    iget-object v1, v1, Lg/cvs;->e:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    check-cast v0, Lg/cvs;

    iput-object p1, v0, Lg/cvs;->e:Ljava/lang/Integer;

    invoke-virtual {p0}, Lg/gqz;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackStopIndicatorSize(I)V
    .locals 3

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    move-object v1, v0

    check-cast v1, Lg/cvs;

    iget v1, v1, Lg/cvs;->i:I

    if-eq v1, p1, :cond_0

    move-object v1, v0

    check-cast v1, Lg/cvs;

    move-object v2, v0

    check-cast v2, Lg/cvs;

    iget v2, v2, Lg/dzw;->s:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v1, Lg/cvs;->i:I

    check-cast v0, Lg/cvs;

    invoke-virtual {v0}, Lg/cvs;->j()V

    invoke-virtual {p0}, Lg/gqz;->invalidate()V

    :cond_0
    return-void
.end method

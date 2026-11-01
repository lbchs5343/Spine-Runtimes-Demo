.class public abstract Lg/gqz;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# instance fields
.field public c:Z

.field public d:I

.field public final e:Lg/fer;

.field public final f:Z

.field public final g:Lg/bbg;

.field public final h:Lg/bbg;

.field public final i:I

.field public j:Lg/fec;

.field public final k:Lg/dzw;

.field public final l:Lg/fer;

.field public m:I

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    const v0, 0x7f130528

    invoke-static {p1, p2, p3, v0}, Lg/egh;->ax(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/gqz;->n:Z

    const/4 v0, 0x4

    iput v0, p0, Lg/gqz;->d:I

    new-instance v0, Lg/fer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/fer;-><init>(Lg/gqz;I)V

    iput-object v0, p0, Lg/gqz;->l:Lg/fer;

    new-instance v0, Lg/fer;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/fer;-><init>(Lg/gqz;I)V

    iput-object v0, p0, Lg/gqz;->e:Lg/fer;

    new-instance v0, Lg/bbg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/bbg;-><init>(Lg/gqz;I)V

    iput-object v0, p0, Lg/gqz;->h:Lg/bbg;

    new-instance v0, Lg/bbg;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/bbg;-><init>(Lg/gqz;I)V

    iput-object v0, p0, Lg/gqz;->g:Lg/bbg;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lg/gqz;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lg/dzw;

    move-result-object v0

    iput-object v0, p0, Lg/gqz;->k:Lg/dzw;

    new-array v7, p1, [I

    invoke-static {v2, p2, p3, p4}, Lg/eyt;->bn(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v4, Lg/git;->m:[I

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v2 .. v7}, Lg/eyt;->ap(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x7

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/16 p3, 0x3e8

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lg/gqz;->i:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lg/fec;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gqz;->j:Lg/fec;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/gqz;->f:Z

    return-void
.end method

.method private getCurrentDrawingDelegate()Lg/elw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/elw;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object v0

    iget-object v0, v0, Lg/fkr;->v:Lg/elw;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lg/gqz;->getProgressDrawable()Lg/glg;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lg/gqz;->getProgressDrawable()Lg/glg;

    move-result-object v0

    iget-object v0, v0, Lg/glg;->ac:Lg/elw;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/util/AttributeSet;)Lg/dzw;
.end method

.method public b(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lg/gqz;->getProgressDrawable()Lg/glg;

    move-result-object v0

    if-eqz v0, :cond_3

    iput p1, p0, Lg/gqz;->m:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/gqz;->n:Z

    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg/gqz;->j:Lg/fec;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "animator_duration_scale"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object p1

    iget-object p1, p1, Lg/fkr;->u:Lg/cgo;

    invoke-virtual {p1}, Lg/cgo;->z()V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lg/gqz;->h:Lg/bbg;

    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/bbg;->b(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lg/gqz;->getProgressDrawable()Lg/glg;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lg/gqz;->getProgressDrawable()Lg/glg;

    move-result-object p1

    invoke-virtual {p1}, Lg/glg;->jumpToCurrentState()V

    :cond_3
    return-void
.end method

.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lg/gqz;->getProgressDrawable()Lg/glg;

    move-result-object v0

    return-object v0
.end method

.method public getHideAnimationBehavior()I
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iget v0, v0, Lg/dzw;->m:I

    return v0
.end method

.method public bridge synthetic getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object v0

    return-object v0
.end method

.method public getIndeterminateDrawable()Lg/fkr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/fkr;"
        }
    .end annotation

    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lg/fkr;

    return-object v0
.end method

.method public getIndicatorColor()[I
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iget-object v0, v0, Lg/dzw;->r:[I

    return-object v0
.end method

.method public getIndicatorTrackGapSize()I
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iget v0, v0, Lg/dzw;->v:I

    return v0
.end method

.method public bridge synthetic getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lg/gqz;->getProgressDrawable()Lg/glg;

    move-result-object v0

    return-object v0
.end method

.method public getProgressDrawable()Lg/glg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/glg;"
        }
    .end annotation

    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lg/glg;

    return-object v0
.end method

.method public getShowAnimationBehavior()I
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iget v0, v0, Lg/dzw;->z:I

    return v0
.end method

.method public getTrackColor()I
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iget v0, v0, Lg/dzw;->t:I

    return v0
.end method

.method public getTrackCornerRadius()I
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iget v0, v0, Lg/dzw;->w:I

    return v0
.end method

.method public getTrackCornerRadiusFraction()F
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iget v0, v0, Lg/dzw;->y:F

    return v0
.end method

.method public getTrackThickness()I
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iget v0, v0, Lg/dzw;->s:I

    return v0
.end method

.method public getWaveAmplitude()I
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iget v0, v0, Lg/dzw;->q:I

    return v0
.end method

.method public getWaveSpeed()I
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iget v0, v0, Lg/dzw;->u:I

    return v0
.end method

.method public getWavelengthDeterminate()I
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iget v0, v0, Lg/dzw;->x:I

    return v0
.end method

.method public getWavelengthIndeterminate()I
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iget v0, v0, Lg/dzw;->n:I

    return v0
.end method

.method public final invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ProgressBar;->invalidate()V

    invoke-virtual {p0}, Lg/gqz;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/gqz;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final o()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_1
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_2

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_2
    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_3
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    invoke-virtual {p0}, Lg/gqz;->p()V

    invoke-virtual {p0}, Lg/gqz;->getProgressDrawable()Lg/glg;

    move-result-object v0

    iget-object v1, p0, Lg/gqz;->g:Lg/bbg;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lg/gqz;->getProgressDrawable()Lg/glg;

    move-result-object v0

    iget-object v2, v0, Lg/dzo;->c:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lg/dzo;->c:Ljava/util/ArrayList;

    :cond_0
    iget-object v2, v0, Lg/dzo;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lg/dzo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object v0

    iget-object v2, v0, Lg/dzo;->c:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lg/dzo;->c:Ljava/util/ArrayList;

    :cond_2
    iget-object v2, v0, Lg/dzo;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, v0, Lg/dzo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lg/gqz;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lg/gqz;->i:I

    if-lez v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lg/gqz;->e:Lg/fer;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lg/gqz;->l:Lg/fer;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lg/gqz;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lg/dzo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lg/dzo;->o(ZZZ)Z

    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object v0

    iget-object v1, p0, Lg/gqz;->g:Lg/bbg;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lg/dzo;->q(Lg/bbg;)V

    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object v0

    iget-object v0, v0, Lg/fkr;->u:Lg/cgo;

    invoke-virtual {v0}, Lg/cgo;->u()V

    :cond_0
    invoke-virtual {p0}, Lg/gqz;->getProgressDrawable()Lg/glg;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lg/gqz;->getProgressDrawable()Lg/glg;

    move-result-object v0

    invoke-virtual {v0, v1}, Lg/dzo;->q(Lg/bbg;)V

    :cond_1
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    return-void
.end method

.method public final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_3
    invoke-virtual {p0}, Lg/gqz;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/ProgressBar;->onLayout(ZIIII)V

    invoke-direct {p0}, Lg/gqz;->getCurrentDrawingDelegate()Lg/elw;

    move-result-object p1

    invoke-virtual {p1}, Lg/elw;->s()V

    return-void
.end method

.method public final declared-synchronized onMeasure(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lg/gqz;->getCurrentDrawingDelegate()Lg/elw;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lg/elw;->n()I

    move-result v1

    if-gez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lg/elw;->n()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr p1, v1

    :goto_0
    invoke-virtual {v0}, Lg/elw;->l()I

    move-result v1

    if-gez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lg/elw;->l()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisibilityChanged(Landroid/view/View;I)V

    const/4 p1, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-boolean v0, p0, Lg/gqz;->f:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lg/gqz;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lg/dzo;

    invoke-virtual {p0}, Lg/gqz;->o()Z

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lg/dzo;->o(ZZZ)Z

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onWindowVisibilityChanged(I)V

    iget-boolean p1, p0, Lg/gqz;->f:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lg/gqz;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lg/dzo;

    invoke-virtual {p0}, Lg/gqz;->o()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lg/dzo;->o(ZZZ)Z

    return-void
.end method

.method public final p()V
    .locals 2

    invoke-virtual {p0}, Lg/gqz;->getProgressDrawable()Lg/glg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object v0

    iget-object v0, v0, Lg/fkr;->u:Lg/cgo;

    iget-object v1, p0, Lg/gqz;->h:Lg/bbg;

    invoke-virtual {v0, v1}, Lg/cgo;->w(Lg/bbg;)V

    :cond_0
    return-void
.end method

.method public setAnimatorDurationScaleProvider(Lg/fec;)V
    .locals 1

    iput-object p1, p0, Lg/gqz;->j:Lg/fec;

    invoke-virtual {p0}, Lg/gqz;->getProgressDrawable()Lg/glg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/gqz;->getProgressDrawable()Lg/glg;

    move-result-object v0

    iput-object p1, v0, Lg/dzo;->e:Lg/fec;

    :cond_0
    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object v0

    iput-object p1, v0, Lg/dzo;->e:Lg/fec;

    :cond_1
    return-void
.end method

.method public setHideAnimationBehavior(I)V
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iput p1, v0, Lg/dzw;->m:I

    invoke-virtual {p0}, Lg/gqz;->invalidate()V

    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lg/gqz;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lg/dzo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1, v1, v1}, Lg/dzo;->o(ZZZ)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {p0}, Lg/gqz;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lg/dzo;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lg/gqz;->o()Z

    move-result v0

    invoke-virtual {p1, v0, v1, v1}, Lg/dzo;->o(ZZZ)Z

    :cond_2
    instance-of v0, p1, Lg/fkr;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lg/gqz;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Lg/fkr;

    iget-object p1, p1, Lg/fkr;->u:Lg/cgo;

    invoke-virtual {p1}, Lg/cgo;->x()V

    :cond_3
    iput-boolean v1, p0, Lg/gqz;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setIndeterminateAnimatorDurationScale(F)V
    .locals 2

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iget v1, v0, Lg/dzw;->o:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lg/dzw;->o:F

    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object p1

    iget-object p1, p1, Lg/fkr;->u:Lg/cgo;

    invoke-virtual {p1}, Lg/cgo;->t()V

    :cond_0
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    instance-of v0, p1, Lg/fkr;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lg/dzo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lg/dzo;->o(ZZZ)Z

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lg/gqz;->c:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set framework drawable as indeterminate drawable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setIndicatorColor([I)V
    .locals 3

    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040126

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lg/eyt;->z(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    :cond_0
    invoke-virtual {p0}, Lg/gqz;->getIndicatorColor()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iput-object p1, v0, Lg/dzw;->r:[I

    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object p1

    iget-object p1, p1, Lg/fkr;->u:Lg/cgo;

    invoke-virtual {p1}, Lg/cgo;->t()V

    invoke-virtual {p0}, Lg/gqz;->invalidate()V

    :cond_1
    return-void
.end method

.method public setIndicatorTrackGapSize(I)V
    .locals 2

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iget v1, v0, Lg/dzw;->v:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lg/dzw;->v:I

    invoke-virtual {v0}, Lg/dzw;->j()V

    invoke-virtual {p0}, Lg/gqz;->invalidate()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lg/gqz;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    instance-of v0, p1, Lg/glg;

    if-eqz v0, :cond_0

    check-cast p1, Lg/glg;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0}, Lg/dzo;->o(ZZZ)Z

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x461c4000    # 10000.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lg/gqz;->c:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set framework drawable as progress drawable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowAnimationBehavior(I)V
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iput p1, v0, Lg/dzw;->z:I

    invoke-virtual {p0}, Lg/gqz;->invalidate()V

    return-void
.end method

.method public setTrackColor(I)V
    .locals 2

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iget v1, v0, Lg/dzw;->t:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lg/dzw;->t:I

    invoke-virtual {p0}, Lg/gqz;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackCornerRadius(I)V
    .locals 2

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iget v1, v0, Lg/dzw;->w:I

    if-eq v1, p1, :cond_0

    iget v1, v0, Lg/dzw;->s:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Lg/dzw;->w:I

    const/4 p1, 0x0

    iput-boolean p1, v0, Lg/dzw;->p:Z

    invoke-virtual {p0}, Lg/gqz;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackCornerRadiusFraction(F)V
    .locals 2

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iget v1, v0, Lg/dzw;->y:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, v0, Lg/dzw;->y:F

    const/4 p1, 0x1

    iput-boolean p1, v0, Lg/dzw;->p:Z

    invoke-virtual {p0}, Lg/gqz;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackThickness(I)V
    .locals 2

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iget v1, v0, Lg/dzw;->s:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lg/dzw;->s:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setVisibilityAfterHide(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The component\'s visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lg/gqz;->d:I

    return-void
.end method

.method public setWaveAmplitude(I)V
    .locals 2

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iget v1, v0, Lg/dzw;->q:I

    if-eq v1, p1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, v0, Lg/dzw;->q:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWaveSpeed(I)V
    .locals 2

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iput p1, v0, Lg/dzw;->u:I

    invoke-virtual {p0}, Lg/gqz;->getProgressDrawable()Lg/glg;

    move-result-object p1

    iget v0, v0, Lg/dzw;->u:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p1, Lg/glg;->v:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    return-void
.end method

.method public setWavelength(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lg/gqz;->setWavelengthDeterminate(I)V

    invoke-virtual {p0, p1}, Lg/gqz;->setWavelengthIndeterminate(I)V

    return-void
.end method

.method public setWavelengthDeterminate(I)V
    .locals 2

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iget v1, v0, Lg/dzw;->x:I

    if-eq v1, p1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, v0, Lg/dzw;->x:I

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWavelengthIndeterminate(I)V
    .locals 2

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    iget v1, v0, Lg/dzw;->n:I

    if-eq v1, p1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, v0, Lg/dzw;->n:I

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

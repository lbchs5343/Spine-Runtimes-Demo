.class public final Lg/fwq;
.super Lg/eg;
.source "SourceFile"


# instance fields
.field public at:I

.field public au:I

.field public final synthetic av:Lcom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fwq;->av:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    const/4 p1, -0x1

    iput p1, p0, Lg/fwq;->au:I

    return-void
.end method


# virtual methods
.method public final aj(I)V
    .locals 2

    iget-object v0, p0, Lg/fwq;->av:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->s:Lg/eie;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/cle;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg/duw;->j()Lg/duw;

    move-result-object p1

    iget-object v0, v0, Lg/cle;->v:Lg/rl;

    invoke-virtual {p1, v0}, Lg/duw;->q(Lg/rl;)V

    return-void

    :cond_1
    invoke-static {}, Lg/duw;->j()Lg/duw;

    move-result-object p1

    iget-object v0, v0, Lg/cle;->v:Lg/rl;

    invoke-virtual {p1, v0}, Lg/duw;->s(Lg/rl;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final ak(ILandroid/view/View;)I
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lg/fwq;->av:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->p:I

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    iget v0, p0, Lg/fwq;->at:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int/2addr v0, p2

    iget p2, p0, Lg/fwq;->at:I

    goto :goto_2

    :cond_1
    iget v0, p0, Lg/fwq;->at:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    :goto_1
    add-int/2addr p2, v0

    goto :goto_2

    :cond_2
    if-ne v2, v1, :cond_4

    if-eqz v0, :cond_3

    iget v0, p0, Lg/fwq;->at:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    goto :goto_1

    :cond_3
    iget v0, p0, Lg/fwq;->at:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int/2addr v0, p2

    iget p2, p0, Lg/fwq;->at:I

    goto :goto_2

    :cond_4
    iget v0, p0, Lg/fwq;->at:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lg/fwq;->at:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr p2, v1

    :goto_2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public final al(Landroid/view/View;FF)V
    .locals 8

    const/4 p3, -0x1

    iput p3, p0, Lg/fwq;->au:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    const/4 v0, 0x0

    iget-object v1, p0, Lg/fwq;->av:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmpl-float v4, p2, v3

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    if-ne v5, v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget v6, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->p:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    if-nez v6, :cond_3

    if-eqz v5, :cond_2

    cmpg-float v4, p2, v3

    if-gez v4, :cond_8

    goto :goto_1

    :cond_2
    if-lez v4, :cond_8

    goto :goto_1

    :cond_3
    if-ne v6, v2, :cond_8

    if-eqz v5, :cond_4

    if-lez v4, :cond_8

    goto :goto_1

    :cond_4
    cmpg-float v4, p2, v3

    if-gez v4, :cond_8

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Lg/fwq;->at:I

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lt v4, v5, :cond_8

    :goto_1
    cmpg-float p2, p2, v3

    if-ltz p2, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v0, p0, Lg/fwq;->at:I

    if-ge p2, v0, :cond_6

    goto :goto_2

    :cond_6
    add-int/2addr v0, p3

    goto :goto_3

    :cond_7
    :goto_2
    iget p2, p0, Lg/fwq;->at:I

    sub-int v0, p2, p3

    goto :goto_3

    :cond_8
    iget p2, p0, Lg/fwq;->at:I

    move v0, p2

    const/4 v2, 0x0

    :goto_3
    iget-object p2, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->q:Lg/dfv;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p2, v0, p3}, Lg/dfv;->y(II)Z

    move-result p2

    if-eqz p2, :cond_9

    new-instance p2, Lg/cef;

    const/4 p3, 0x3

    invoke-direct {p2, p3, v1, p1, v2}, Lg/cef;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    if-eqz v2, :cond_a

    iget-object p2, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->s:Lg/eie;

    if-eqz p2, :cond_a

    invoke-virtual {p2, p1}, Lg/eie;->y(Landroid/view/View;)V

    :cond_a
    return-void
.end method

.method public final am(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lg/fwq;->av:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v1, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->r:F

    mul-float p3, p3, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->u:F

    mul-float v1, v1, v0

    iget v0, p0, Lg/fwq;->at:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v2, p2, p3

    if-gtz v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_0
    const/4 v2, 0x0

    cmpl-float v3, p2, v1

    if-ltz v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_1
    sub-float/2addr p2, p3

    sub-float/2addr v1, p3

    div-float/2addr p2, v1

    sub-float p2, v0, p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final an(ILandroid/view/View;)I
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method public final ap(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1
.end method

.method public final aq(ILandroid/view/View;)V
    .locals 1

    iput p1, p0, Lg/fwq;->au:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p1

    iput p1, p0, Lg/fwq;->at:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lg/fwq;->av:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Z

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Z

    :cond_0
    return-void
.end method

.method public final as(ILandroid/view/View;)Z
    .locals 2

    iget v0, p0, Lg/fwq;->au:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ne v0, p1, :cond_1

    :cond_0
    iget-object p1, p0, Lg/fwq;->av:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {p1, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->v(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

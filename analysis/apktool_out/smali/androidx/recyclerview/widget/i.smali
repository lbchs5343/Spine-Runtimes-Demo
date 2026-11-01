.class public Landroidx/recyclerview/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/animation/LinearInterpolator;

.field public final b:Landroid/util/DisplayMetrics;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:I

.field public i:Landroid/view/View;

.field public j:F

.field public final k:Landroid/view/animation/DecelerateInterpolator;

.field public l:Landroidx/recyclerview/widget/RecyclerView;

.field public m:Landroid/graphics/PointF;

.field public n:Landroidx/recyclerview/widget/b;

.field public final o:Landroidx/recyclerview/widget/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/i;->h:I

    new-instance v1, Landroidx/recyclerview/widget/c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v0, v1, Landroidx/recyclerview/widget/c;->a:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroidx/recyclerview/widget/c;->d:Z

    iput v0, v1, Landroidx/recyclerview/widget/c;->g:I

    iput v0, v1, Landroidx/recyclerview/widget/c;->c:I

    iput v0, v1, Landroidx/recyclerview/widget/c;->e:I

    const/high16 v2, -0x80000000

    iput v2, v1, Landroidx/recyclerview/widget/c;->f:I

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/c;->b:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Landroidx/recyclerview/widget/i;->o:Landroidx/recyclerview/widget/c;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/i;->a:Landroid/view/animation/LinearInterpolator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/i;->k:Landroid/view/animation/DecelerateInterpolator;

    iput-boolean v0, p0, Landroidx/recyclerview/widget/i;->f:Z

    iput v0, p0, Landroidx/recyclerview/widget/i;->d:I

    iput v0, p0, Landroidx/recyclerview/widget/i;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/i;->b:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public static p(IIIII)I
    .locals 1

    const/4 v0, -0x1

    if-eq p4, v0, :cond_4

    if-eqz p4, :cond_1

    const/4 p0, 0x1

    if-ne p4, p0, :cond_0

    sub-int/2addr p3, p1

    return p3

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sub-int/2addr p2, p0

    if-lez p2, :cond_2

    return p2

    :cond_2
    sub-int/2addr p3, p1

    if-gez p3, :cond_3

    return p3

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    sub-int/2addr p2, p0

    return p2
.end method


# virtual methods
.method public q(Landroid/view/View;Landroidx/recyclerview/widget/c;)V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/i;->m:Landroid/graphics/PointF;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/i;->v(Landroid/view/View;I)I

    move-result v0

    iget-object v5, p0, Landroidx/recyclerview/widget/i;->m:Landroid/graphics/PointF;

    if-eqz v5, :cond_5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v5, v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    if-lez v4, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, -0x1

    :cond_5
    :goto_2
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/i;->w(Landroid/view/View;I)I

    move-result p1

    mul-int v1, v0, v0

    mul-int v2, p1, p1

    add-int/2addr v2, v1

    int-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/i;->s(I)I

    move-result v1

    int-to-double v1, v1

    const-wide v4, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    if-lez v1, :cond_6

    neg-int v0, v0

    neg-int p1, p1

    iput v0, p2, Landroidx/recyclerview/widget/c;->c:I

    iput p1, p2, Landroidx/recyclerview/widget/c;->e:I

    iput v1, p2, Landroidx/recyclerview/widget/c;->f:I

    iget-object p1, p0, Landroidx/recyclerview/widget/i;->k:Landroid/view/animation/DecelerateInterpolator;

    iput-object p1, p2, Landroidx/recyclerview/widget/c;->b:Landroid/view/animation/Interpolator;

    iput-boolean v3, p2, Landroidx/recyclerview/widget/c;->d:Z

    :cond_6
    return-void
.end method

.method public r(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x41c80000    # 25.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public s(I)I
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/i;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/i;->b:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/i;->r(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/i;->j:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/i;->f:Z

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/i;->j:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public t(I)Landroid/graphics/PointF;
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/i;->n:Landroidx/recyclerview/widget/b;

    instance-of v1, v0, Lg/wp;

    if-eqz v1, :cond_0

    check-cast v0, Lg/wp;

    invoke-interface {v0, p1}, Lg/wp;->cf(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final u()V
    .locals 4

    iget-boolean v0, p0, Landroidx/recyclerview/widget/i;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/i;->g:Z

    iput v0, p0, Landroidx/recyclerview/widget/i;->c:I

    iput v0, p0, Landroidx/recyclerview/widget/i;->d:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/recyclerview/widget/i;->m:Landroid/graphics/PointF;

    iget-object v2, p0, Landroidx/recyclerview/widget/i;->l:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    const/4 v3, -0x1

    iput v3, v2, Lg/aqz;->g:I

    iput-object v1, p0, Landroidx/recyclerview/widget/i;->i:Landroid/view/View;

    iput v3, p0, Landroidx/recyclerview/widget/i;->h:I

    iput-boolean v0, p0, Landroidx/recyclerview/widget/i;->e:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/i;->n:Landroidx/recyclerview/widget/b;

    iget-object v2, v0, Landroidx/recyclerview/widget/b;->dr:Landroidx/recyclerview/widget/i;

    if-ne v2, p0, :cond_1

    iput-object v1, v0, Landroidx/recyclerview/widget/b;->dr:Landroidx/recyclerview/widget/i;

    :cond_1
    iput-object v1, p0, Landroidx/recyclerview/widget/i;->n:Landroidx/recyclerview/widget/b;

    iput-object v1, p0, Landroidx/recyclerview/widget/i;->l:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public v(Landroid/view/View;I)I
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/i;->n:Landroidx/recyclerview/widget/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->ca()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lg/yx;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lg/yx;

    iget-object v3, v3, Lg/yx;->c:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lg/yx;

    iget-object p1, p1, Lg/yx;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, p1

    iget p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->eq()I

    move-result p1

    iget v1, v0, Landroidx/recyclerview/widget/b;->do:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->fj()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-static {v2, v3, p1, v1, p2}, Landroidx/recyclerview/widget/i;->p(IIIII)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public w(Landroid/view/View;I)I
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/i;->n:Landroidx/recyclerview/widget/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->cd()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lg/yx;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lg/yx;

    iget-object v3, v3, Lg/yx;->c:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lg/yx;

    iget-object p1, p1, Lg/yx;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p1

    iget p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->fd()I

    move-result p1

    iget v1, v0, Landroidx/recyclerview/widget/b;->dn:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->er()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-static {v2, v3, p1, v1, p2}, Landroidx/recyclerview/widget/i;->p(IIIII)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final x(II)V
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/i;->l:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Landroidx/recyclerview/widget/i;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/i;->u()V

    :cond_1
    iget-boolean v1, p0, Landroidx/recyclerview/widget/i;->e:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/i;->i:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/i;->n:Landroidx/recyclerview/widget/b;

    if-eqz v1, :cond_3

    iget v1, p0, Landroidx/recyclerview/widget/i;->h:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/i;->t(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v4, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v5, v4, v3

    if-nez v5, :cond_2

    iget v5, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_3

    :cond_2
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v4, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/i;->e:Z

    iget-object v4, p0, Landroidx/recyclerview/widget/i;->i:Landroid/view/View;

    iget-object v5, p0, Landroidx/recyclerview/widget/i;->o:Landroidx/recyclerview/widget/c;

    if-eqz v4, :cond_5

    iget-object v6, p0, Landroidx/recyclerview/widget/i;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v4

    iget v6, p0, Landroidx/recyclerview/widget/i;->h:I

    if-ne v4, v6, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/i;->i:Landroid/view/View;

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    invoke-virtual {p0, v2, v5}, Landroidx/recyclerview/widget/i;->q(Landroid/view/View;Landroidx/recyclerview/widget/c;)V

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/c;->h(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/i;->u()V

    goto :goto_0

    :cond_4
    const-string v4, "RecyclerView"

    const-string v6, "Passed over target position while smooth scrolling."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Landroidx/recyclerview/widget/i;->i:Landroid/view/View;

    :cond_5
    :goto_0
    iget-boolean v2, p0, Landroidx/recyclerview/widget/i;->g:Z

    if-eqz v2, :cond_d

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    iget-object v2, p0, Landroidx/recyclerview/widget/i;->l:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/b;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/b;->et()I

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/i;->u()V

    goto/16 :goto_2

    :cond_6
    iget v2, p0, Landroidx/recyclerview/widget/i;->d:I

    sub-int p1, v2, p1

    mul-int v2, v2, p1

    if-gtz v2, :cond_7

    const/4 p1, 0x0

    :cond_7
    iput p1, p0, Landroidx/recyclerview/widget/i;->d:I

    iget v2, p0, Landroidx/recyclerview/widget/i;->c:I

    sub-int p2, v2, p2

    mul-int v2, v2, p2

    if-gtz v2, :cond_8

    const/4 p2, 0x0

    :cond_8
    iput p2, p0, Landroidx/recyclerview/widget/i;->c:I

    if-nez p1, :cond_b

    if-nez p2, :cond_b

    iget p1, p0, Landroidx/recyclerview/widget/i;->h:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/i;->t(I)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_a

    iget p2, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v2, p2, v3

    if-nez v2, :cond_9

    iget v2, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    mul-float p2, p2, p2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, v2

    add-float/2addr v2, p2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p2, v2

    iget v2, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, p2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, p2

    iput v3, p1, Landroid/graphics/PointF;->y:F

    iput-object p1, p0, Landroidx/recyclerview/widget/i;->m:Landroid/graphics/PointF;

    const p1, 0x461c4000    # 10000.0f

    mul-float v2, v2, p1

    float-to-int p2, v2

    iput p2, p0, Landroidx/recyclerview/widget/i;->d:I

    mul-float v3, v3, p1

    float-to-int p1, v3

    iput p1, p0, Landroidx/recyclerview/widget/i;->c:I

    const/16 p1, 0x2710

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/i;->s(I)I

    move-result p1

    iget p2, p0, Landroidx/recyclerview/widget/i;->d:I

    int-to-float p2, p2

    const v2, 0x3f99999a    # 1.2f

    mul-float p2, p2, v2

    float-to-int p2, p2

    iget v3, p0, Landroidx/recyclerview/widget/i;->c:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    int-to-float p1, p1

    mul-float p1, p1, v2

    float-to-int p1, p1

    iput p2, v5, Landroidx/recyclerview/widget/c;->c:I

    iput v3, v5, Landroidx/recyclerview/widget/c;->e:I

    iput p1, v5, Landroidx/recyclerview/widget/c;->f:I

    iget-object p1, p0, Landroidx/recyclerview/widget/i;->a:Landroid/view/animation/LinearInterpolator;

    iput-object p1, v5, Landroidx/recyclerview/widget/c;->b:Landroid/view/animation/Interpolator;

    iput-boolean v4, v5, Landroidx/recyclerview/widget/c;->d:Z

    goto :goto_2

    :cond_a
    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/i;->h:I

    iput p1, v5, Landroidx/recyclerview/widget/c;->a:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/i;->u()V

    :cond_b
    :goto_2
    iget p1, v5, Landroidx/recyclerview/widget/c;->a:I

    if-ltz p1, :cond_c

    const/4 v1, 0x1

    :cond_c
    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/c;->h(Landroidx/recyclerview/widget/RecyclerView;)V

    if-eqz v1, :cond_d

    iget-boolean p1, p0, Landroidx/recyclerview/widget/i;->g:Z

    if-eqz p1, :cond_d

    iput-boolean v4, p0, Landroidx/recyclerview/widget/i;->e:Z

    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/k;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/k;->i()V

    :cond_d
    return-void
.end method

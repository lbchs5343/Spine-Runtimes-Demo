.class public final Lg/cuo;
.super Lg/bzb;
.source "SourceFile"


# static fields
.field public static final i:Landroid/view/animation/AccelerateInterpolator;

.field public static final j:Landroid/view/animation/PathInterpolator;

.field public static final k:Lg/fca;

.field public static final l:Landroid/view/animation/DecelerateInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f8ccccd    # 1.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lg/cuo;->j:Landroid/view/animation/PathInterpolator;

    new-instance v0, Lg/fca;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/fca;-><init>(I)V

    sput-object v0, Lg/cuo;->k:Lg/fca;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lg/cuo;->l:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lg/cuo;->i:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public static m(Landroid/view/View;Lg/akj;)V
    .locals 2

    invoke-static {p0}, Lg/cuo;->q(Landroid/view/View;)Lg/gcu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lg/gcu;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    iget-object p1, v0, Lg/gcu;->d:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget p1, p1, v1

    iget v1, v0, Lg/gcu;->e:I

    sub-int/2addr v1, p1

    iput v1, v0, Lg/gcu;->f:I

    int-to-float p1, v1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lg/cuo;->m(Landroid/view/View;Lg/akj;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static n(Landroid/view/View;)V
    .locals 2

    invoke-static {p0}, Lg/cuo;->q(Landroid/view/View;)Lg/gcu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lg/gcu;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lg/cuo;->n(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static o(Landroid/view/View;Lg/anp;Z)V
    .locals 2

    invoke-static {p0}, Lg/cuo;->q(Landroid/view/View;)Lg/gcu;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p1, v0, Lg/gcu;->a:Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, v0, Lg/gcu;->b:Ljava/lang/Object;

    check-cast p2, Landroid/view/View;

    iget-object v1, v0, Lg/gcu;->d:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p2, 0x1

    aget v1, v1, p2

    iput v1, v0, Lg/gcu;->e:I

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lg/cuo;->o(Landroid/view/View;Lg/anp;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static p(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    const v0, 0x7f090335

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static q(Landroid/view/View;)Lg/gcu;
    .locals 1

    const v0, 0x7f09033e

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lg/egp;

    if-eqz v0, :cond_0

    check-cast p0, Lg/egp;

    iget-object p0, p0, Lg/egp;->a:Lg/gcu;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static r(Landroid/view/View;Lg/anp;Ljava/util/List;)V
    .locals 2

    invoke-static {p0}, Lg/cuo;->q(Landroid/view/View;)Lg/gcu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg/gcu;->h(Lg/anp;Ljava/util/List;)V

    return-void

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lg/cuo;->r(Landroid/view/View;Lg/anp;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

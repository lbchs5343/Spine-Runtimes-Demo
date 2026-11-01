.class public abstract Lg/wa;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field public final an:Lg/ddm;

.field public ao:I

.field public final ap:Lg/fvi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const v0, 0x7f04035c

    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0089

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance v1, Lg/ddm;

    invoke-direct {v1}, Lg/ddm;-><init>()V

    iput-object v1, p0, Lg/wa;->an:Lg/ddm;

    new-instance v2, Lg/nu;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v2, v3}, Lg/nu;-><init>(F)V

    iget-object v3, v1, Lg/ddm;->ds:Lg/dwo;

    iget-object v3, v3, Lg/dwo;->h:Lg/cjg;

    invoke-virtual {v3}, Lg/cjg;->r()Lg/bem;

    move-result-object v3

    iput-object v2, v3, Lg/bem;->e:Lg/gjn;

    iput-object v2, v3, Lg/bem;->g:Lg/gjn;

    iput-object v2, v3, Lg/bem;->l:Lg/gjn;

    iput-object v2, v3, Lg/bem;->a:Lg/gjn;

    invoke-virtual {v3}, Lg/bem;->n()Lg/cjg;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/ddm;->setShapeAppearanceModel(Lg/cjg;)V

    iget-object v1, p0, Lg/wa;->an:Lg/ddm;

    const/4 v2, -0x1

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/ddm;->en(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lg/wa;->an:Lg/ddm;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Lg/git;->j:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lg/wa;->ao:I

    new-instance p2, Lg/fvi;

    const/16 v0, 0x12

    invoke-direct {p2, v0, p0}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lg/wa;->ap:Lg/fvi;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lg/wa;->ap:Lg/fvi;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public abstract am()V
.end method

.method public final onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    invoke-virtual {p0}, Lg/wa;->am()V

    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lg/wa;->ap:Lg/fvi;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lg/wa;->an:Lg/ddm;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/ddm;->en(Landroid/content/res/ColorStateList;)V

    return-void
.end method

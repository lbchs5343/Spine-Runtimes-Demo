.class public abstract Lg/gbw;
.super Lg/dip;
.source "SourceFile"


# instance fields
.field public q:Lg/gvg;


# virtual methods
.method public o(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lg/gbw;->p(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    iget-object p1, p0, Lg/gbw;->q:Lg/gvg;

    if-nez p1, :cond_0

    new-instance p1, Lg/gvg;

    invoke-direct {p1, p2}, Lg/gvg;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lg/gbw;->q:Lg/gvg;

    :cond_0
    iget-object p1, p0, Lg/gbw;->q:Lg/gvg;

    iget-object p2, p1, Lg/gvg;->c:Ljava/lang/Object;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    iput p3, p1, Lg/gvg;->e:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p1, Lg/gvg;->b:I

    iget-object p1, p0, Lg/gbw;->q:Lg/gvg;

    iget-object p2, p1, Lg/gvg;->c:Ljava/lang/Object;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    iget v0, p1, Lg/gvg;->e:I

    sub-int/2addr p3, v0

    rsub-int/lit8 p3, p3, 0x0

    invoke-static {p3, p2}, Lg/goi;->m(ILandroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    iget p1, p1, Lg/gvg;->b:I

    sub-int/2addr p3, p1

    rsub-int/lit8 p1, p3, 0x0

    invoke-static {p1, p2}, Lg/goi;->i(ILandroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method public p(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1, p3, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->as(ILandroid/view/View;)V

    return-void
.end method

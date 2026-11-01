.class public final Lg/dx;
.super Lg/ciz;
.source "SourceFile"


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/p;
    .locals 2

    invoke-super {p0, p1, p2}, Lg/ciz;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/p;

    move-result-object p1

    iget-object p2, p1, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    const v0, 0x7f0901b3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f09039b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public final b(Landroidx/recyclerview/widget/p;Lg/cng;)V
    .locals 2

    new-instance v0, Lg/th;

    check-cast p2, Lg/ce;

    iget-object p2, p2, Lg/ce;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, v0}, Lg/ciz;->b(Landroidx/recyclerview/widget/p;Lg/cng;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

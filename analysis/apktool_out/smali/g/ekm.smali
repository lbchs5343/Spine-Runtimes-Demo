.class public final Lg/ekm;
.super Lg/ese;


# instance fields
.field public a:Lg/cfe;


# virtual methods
.method public final mn(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lg/ese;->dq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/dlv;

    invoke-virtual {p1}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lg/ekm;->a:Lg/cfe;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/eun;->mn()V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lg/ekm;->a:Lg/cfe;

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

    iget-object v0, p0, Lg/ekm;->a:Lg/cfe;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/eun;->iw()V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    iget-object v0, p1, Lg/ekm;->a:Lg/cfe;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2, p3, p4, p5}, Lg/eun;->dq(IIII)V

    :cond_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lg/ekm;->a:Lg/cfe;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lg/eun;->dq(II)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-super {p0, p2, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    iget-object p1, p0, Lg/ekm;->a:Lg/cfe;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lg/eun;->s()V

    :cond_1
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lg/ekm;->a:Lg/cfe;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lg/eun;->d(IIII)V

    :cond_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lg/ekm;->a:Lg/cfe;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lg/eun;->dq(Z)V

    :cond_0
    return-void
.end method

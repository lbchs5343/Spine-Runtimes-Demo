.class public final Lg/hdl;
.super Landroid/widget/TextView;

# interfaces
.implements Lg/aeb;


# instance fields
.field public a:Lg/eji;

.field public b:Lg/dv;


# virtual methods
.method public getBorderRadius()F
    .locals 1

    iget-object v0, p0, Lg/hdl;->b:Lg/dv;

    iget v0, v0, Lg/dv;->e:F

    return v0
.end method

.method public getRipple()F
    .locals 1

    iget-object v0, p0, Lg/hdl;->b:Lg/dv;

    iget v0, v0, Lg/dv;->a:F

    return v0
.end method

.method public getRubIn()F
    .locals 1

    iget-object v0, p0, Lg/hdl;->b:Lg/dv;

    iget v0, v0, Lg/dv;->f:F

    return v0
.end method

.method public getShine()F
    .locals 1

    iget-object v0, p0, Lg/hdl;->b:Lg/dv;

    iget v0, v0, Lg/dv;->b:F

    return v0
.end method

.method public getStretch()F
    .locals 1

    iget-object v0, p0, Lg/hdl;->b:Lg/dv;

    iget v0, v0, Lg/dv;->c:F

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-object v0, p0, Lg/hdl;->a:Lg/eji;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/eun;->mn()V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lg/hdl;->a:Lg/eji;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/eun;->ia()V

    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lg/hdl;->a:Lg/eji;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lg/eun;->dq(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    iget-object v0, p0, Lg/hdl;->a:Lg/eji;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3, p4, p5}, Lg/eun;->dq(IIII)V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    iget-object v0, p0, Lg/hdl;->a:Lg/eji;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lg/eun;->dq(II)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-super {p0, v1, v0}, Landroid/widget/TextView;->onMeasure(II)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    iget-object v0, p0, Lg/hdl;->a:Lg/eji;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lg/eun;->d(IIII)V

    :cond_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lg/hdl;->a:Lg/eji;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lg/eun;->dq(Z)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lg/hdl;->b:Lg/dv;

    invoke-virtual {v0, p1}, Lg/dv;->h(I)V

    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1

    iget-object v0, p0, Lg/hdl;->b:Lg/dv;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/dv;->g(F)V

    :cond_0
    return-void
.end method

.method public setRichText(Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lg/ayr;->ac(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRipple(F)V
    .locals 2

    iget-object v0, p0, Lg/hdl;->b:Lg/dv;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lg/dv;->d:Landroid/view/View;

    iput p1, v0, Lg/dv;->a:F

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setRubIn(F)V
    .locals 1

    iget-object v0, p0, Lg/hdl;->b:Lg/dv;

    if-eqz v0, :cond_0

    iput p1, v0, Lg/dv;->f:F

    iget-object p1, v0, Lg/dv;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setShine(F)V
    .locals 2

    iget-object v0, p0, Lg/hdl;->b:Lg/dv;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lg/dv;->d:Landroid/view/View;

    iput p1, v0, Lg/dv;->b:F

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setStretch(F)V
    .locals 1

    iget-object v0, p0, Lg/hdl;->b:Lg/dv;

    if-eqz v0, :cond_0

    iput p1, v0, Lg/dv;->c:F

    iget-object p1, v0, Lg/dv;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.class public final Lg/fym;
.super Lg/ddm;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# instance fields
.field public b:Lg/ehw;


# virtual methods
.method public final c(FFFF)V
    .locals 2

    iget-object v0, p0, Lg/fym;->b:Lg/ehw;

    iget-object v0, v0, Lg/ehw;->r:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, p3, v1

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    return-void
.end method

.method public final el(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lg/fym;->b:Lg/ehw;

    iget-object v0, v0, Lg/ehw;->r:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lg/ddm;->el(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lg/fym;->b:Lg/ehw;

    iget-object v0, v0, Lg/ehw;->r:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lg/cnf;->ad(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/fym;->b:Lg/ehw;

    iget-object v0, v0, Lg/ehw;->r:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    :goto_0
    invoke-super {p0, p1}, Lg/ddm;->el(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lg/ehw;

    iget-object v1, p0, Lg/fym;->b:Lg/ehw;

    invoke-direct {v0, v1}, Lg/ehw;-><init>(Lg/ehw;)V

    iput-object v0, p0, Lg/fym;->b:Lg/ehw;

    return-object p0
.end method

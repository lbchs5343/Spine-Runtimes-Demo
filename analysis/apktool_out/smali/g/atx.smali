.class public final Lg/atx;
.super Lg/rq;
.source "SourceFile"


# instance fields
.field public d:F

.field public e:F

.field public f:F

.field public g:Lg/dsg;

.field public h:Landroid/graphics/Paint$Cap;

.field public i:F

.field public j:Lg/dsg;

.field public k:Landroid/graphics/Paint$Join;

.field public l:F

.field public m:F

.field public n:F


# virtual methods
.method public getFillAlpha()F
    .locals 1

    iget v0, p0, Lg/atx;->d:F

    return v0
.end method

.method public getFillColor()I
    .locals 1

    iget-object v0, p0, Lg/atx;->j:Lg/dsg;

    iget v0, v0, Lg/dsg;->d:I

    return v0
.end method

.method public getStrokeAlpha()F
    .locals 1

    iget v0, p0, Lg/atx;->n:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    iget-object v0, p0, Lg/atx;->g:Lg/dsg;

    iget v0, v0, Lg/dsg;->d:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget v0, p0, Lg/atx;->i:F

    return v0
.end method

.method public getTrimPathEnd()F
    .locals 1

    iget v0, p0, Lg/atx;->m:F

    return v0
.end method

.method public getTrimPathOffset()F
    .locals 1

    iget v0, p0, Lg/atx;->e:F

    return v0
.end method

.method public getTrimPathStart()F
    .locals 1

    iget v0, p0, Lg/atx;->l:F

    return v0
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Lg/atx;->j:Lg/dsg;

    invoke-virtual {v0}, Lg/dsg;->t()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/atx;->g:Lg/dsg;

    invoke-virtual {v0}, Lg/dsg;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final p([I)Z
    .locals 6

    iget-object v0, p0, Lg/atx;->j:Lg/dsg;

    invoke-virtual {v0}, Lg/dsg;->t()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lg/dsg;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v1, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget v4, v0, Lg/dsg;->d:I

    if-eq v1, v4, :cond_0

    iput v1, v0, Lg/dsg;->d:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lg/atx;->g:Lg/dsg;

    invoke-virtual {v1}, Lg/dsg;->t()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lg/dsg;->b:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget v4, v1, Lg/dsg;->d:I

    if-eq p1, v4, :cond_1

    iput p1, v1, Lg/dsg;->d:I

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int p1, v0, v2

    return p1
.end method

.method public setFillAlpha(F)V
    .locals 0

    iput p1, p0, Lg/atx;->d:F

    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    iget-object v0, p0, Lg/atx;->j:Lg/dsg;

    iput p1, v0, Lg/dsg;->d:I

    return-void
.end method

.method public setStrokeAlpha(F)V
    .locals 0

    iput p1, p0, Lg/atx;->n:F

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    iget-object v0, p0, Lg/atx;->g:Lg/dsg;

    iput p1, v0, Lg/dsg;->d:I

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lg/atx;->i:F

    return-void
.end method

.method public setTrimPathEnd(F)V
    .locals 0

    iput p1, p0, Lg/atx;->m:F

    return-void
.end method

.method public setTrimPathOffset(F)V
    .locals 0

    iput p1, p0, Lg/atx;->e:F

    return-void
.end method

.method public setTrimPathStart(F)V
    .locals 0

    iput p1, p0, Lg/atx;->l:F

    return-void
.end method

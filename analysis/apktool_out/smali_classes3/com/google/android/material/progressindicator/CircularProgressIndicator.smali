.class public Lcom/google/android/material/progressindicator/CircularProgressIndicator;
.super Lg/gqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/gqz;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const v0, 0x7f0400df

    const v1, 0x7f1304f7

    invoke-direct {p0, p1, p2, v0, v1}, Lg/gqz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lg/hdv;

    iget-object p2, p0, Lg/gqz;->k:Lg/dzw;

    check-cast p2, Lg/alp;

    invoke-direct {p1, p2}, Lg/hdv;-><init>(Lg/alp;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lg/fkr;

    iget v2, p2, Lg/alp;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Lg/dpk;

    invoke-direct {v2, v0, p2}, Lg/dpk;-><init>(Landroid/content/Context;Lg/alp;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lg/bgo;

    invoke-direct {v2, p2}, Lg/bgo;-><init>(Lg/alp;)V

    :goto_0
    invoke-direct {v1, v0, p2, p1, v2}, Lg/fkr;-><init>(Landroid/content/Context;Lg/dzw;Lg/elw;Lg/cgo;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080104

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Lg/eia;->j(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lg/eia;

    move-result-object v0

    iput-object v0, v1, Lg/fkr;->t:Lg/eia;

    invoke-virtual {p0, v1}, Lg/gqz;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lg/glg;

    invoke-direct {v1, v0, p2, p1}, Lg/glg;-><init>(Landroid/content/Context;Lg/dzw;Lg/elw;)V

    invoke-virtual {p0, v1}, Lg/gqz;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-boolean v3, p0, Lg/gqz;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Lg/dzw;
    .locals 10

    new-instance v0, Lg/alp;

    const v4, 0x7f0400df

    const v5, 0x7f1304f7

    invoke-direct {v0, p1, p2, v4, v5}, Lg/dzw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070401

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v9, 0x0

    new-array v6, v9, [I

    invoke-static {p1, p2, v4, v5}, Lg/eyt;->bn(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v3, Lg/git;->l:[I

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lg/eyt;->ap(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v9, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, v0, Lg/alp;->a:I

    const/4 p2, 0x4

    invoke-static {v1, p1, p2, v7}, Lg/gs;->bd(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result p2

    iget v2, v0, Lg/dzw;->s:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, v0, Lg/alp;->c:I

    const/4 p2, 0x3

    invoke-static {v1, p1, p2, v8}, Lg/gs;->bd(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, v0, Lg/alp;->d:I

    invoke-virtual {p1, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, v0, Lg/alp;->e:I

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, v0, Lg/alp;->b:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Lg/dzw;->j()V

    return-object v0
.end method

.method public getIndeterminateAnimationType()I
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    check-cast v0, Lg/alp;

    iget v0, v0, Lg/alp;->a:I

    return v0
.end method

.method public getIndicatorDirection()I
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    check-cast v0, Lg/alp;

    iget v0, v0, Lg/alp;->e:I

    return v0
.end method

.method public getIndicatorInset()I
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    check-cast v0, Lg/alp;

    iget v0, v0, Lg/alp;->d:I

    return v0
.end method

.method public getIndicatorSize()I
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    check-cast v0, Lg/alp;

    iget v0, v0, Lg/alp;->c:I

    return v0
.end method

.method public setIndeterminateAnimationType(I)V
    .locals 2

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    move-object v1, v0

    check-cast v1, Lg/alp;

    iget v1, v1, Lg/alp;->a:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lg/gqz;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    move-object v1, v0

    check-cast v1, Lg/alp;

    iput p1, v1, Lg/alp;->a:I

    move-object v1, v0

    check-cast v1, Lg/alp;

    invoke-virtual {v1}, Lg/dzw;->j()V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    new-instance p1, Lg/dpk;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v0, Lg/alp;

    invoke-direct {p1, v1, v0}, Lg/dpk;-><init>(Landroid/content/Context;Lg/alp;)V

    goto :goto_1

    :cond_3
    new-instance p1, Lg/bgo;

    check-cast v0, Lg/alp;

    invoke-direct {p1, v0}, Lg/bgo;-><init>(Lg/alp;)V

    :goto_1
    invoke-virtual {p0}, Lg/gqz;->getIndeterminateDrawable()Lg/fkr;

    move-result-object v0

    iput-object p1, v0, Lg/fkr;->u:Lg/cgo;

    iput-object v0, p1, Lg/cgo;->aa:Ljava/lang/Object;

    invoke-virtual {p0}, Lg/gqz;->p()V

    invoke-virtual {p0}, Lg/gqz;->invalidate()V

    return-void
.end method

.method public setIndicatorDirection(I)V
    .locals 1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    check-cast v0, Lg/alp;

    iput p1, v0, Lg/alp;->e:I

    invoke-virtual {p0}, Lg/gqz;->invalidate()V

    return-void
.end method

.method public setIndicatorInset(I)V
    .locals 2

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    move-object v1, v0

    check-cast v1, Lg/alp;

    iget v1, v1, Lg/alp;->d:I

    if-eq v1, p1, :cond_0

    check-cast v0, Lg/alp;

    iput p1, v0, Lg/alp;->d:I

    invoke-virtual {p0}, Lg/gqz;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIndicatorSize(I)V
    .locals 2

    invoke-virtual {p0}, Lg/gqz;->getTrackThickness()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lg/gqz;->k:Lg/dzw;

    move-object v1, v0

    check-cast v1, Lg/alp;

    iget v1, v1, Lg/alp;->c:I

    if-eq v1, p1, :cond_0

    move-object v1, v0

    check-cast v1, Lg/alp;

    iput p1, v1, Lg/alp;->c:I

    check-cast v0, Lg/alp;

    invoke-virtual {v0}, Lg/dzw;->j()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lg/gqz;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackThickness(I)V
    .locals 0

    invoke-super {p0, p1}, Lg/gqz;->setTrackThickness(I)V

    iget-object p1, p0, Lg/gqz;->k:Lg/dzw;

    check-cast p1, Lg/alp;

    invoke-virtual {p1}, Lg/dzw;->j()V

    return-void
.end method

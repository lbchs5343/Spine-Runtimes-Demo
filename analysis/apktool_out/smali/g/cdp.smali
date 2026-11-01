.class public final Lg/cdp;
.super Landroid/view/ViewGroup;


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Ljava/util/List;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Lg/fdy;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Lg/ta;

.field public l:I

.field public m:I

.field public n:I

.field public o:Landroid/util/SparseIntArray;

.field public p:Lg/bsq;

.field public q:[I

.field public r:I


# virtual methods
.method public final aa()Z
    .locals 2

    iget v0, p0, Lg/cdp;->l:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final ab(Landroid/graphics/Canvas;ZZ)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lg/cdp;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_9

    iget-object v5, p0, Lg/cdp;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/gzl;

    const/4 v6, 0x0

    :goto_1
    iget v7, v5, Lg/gzl;->a:I

    if-ge v6, v7, :cond_4

    iget v7, v5, Lg/gzl;->c:I

    add-int/2addr v7, v6

    invoke-virtual {p0, v7}, Lg/cdp;->t(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_3

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lg/avj;

    invoke-virtual {p0, v7, v6}, Lg/cdp;->z(II)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v10

    goto :goto_2

    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v7

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v7, v10

    iget v10, p0, Lg/cdp;->h:I

    sub-int/2addr v7, v10

    :goto_2
    iget v10, v5, Lg/gzl;->h:I

    iget v11, v5, Lg/gzl;->q:I

    invoke-virtual {p0, p1, v10, v7, v11}, Lg/cdp;->x(Landroid/graphics/Canvas;III)V

    :cond_1
    iget v7, v5, Lg/gzl;->a:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_3

    iget v7, p0, Lg/cdp;->m:I

    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v7, v8

    iget v8, p0, Lg/cdp;->h:I

    sub-int/2addr v7, v8

    goto :goto_3

    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    :goto_3
    iget v8, v5, Lg/gzl;->h:I

    iget v9, v5, Lg/gzl;->q:I

    invoke-virtual {p0, p1, v8, v7, v9}, Lg/cdp;->x(Landroid/graphics/Canvas;III)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v4}, Lg/cdp;->v(I)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz p2, :cond_5

    iget v6, v5, Lg/gzl;->p:I

    goto :goto_4

    :cond_5
    iget v6, v5, Lg/gzl;->h:I

    iget v7, p0, Lg/cdp;->g:I

    sub-int/2addr v6, v7

    :goto_4
    invoke-virtual {p0, p1, v6, v0, v2}, Lg/cdp;->ae(Landroid/graphics/Canvas;III)V

    :cond_6
    invoke-virtual {p0, v4}, Lg/cdp;->ac(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, p0, Lg/cdp;->e:I

    and-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_8

    if-eqz p2, :cond_7

    iget v5, v5, Lg/gzl;->h:I

    iget v6, p0, Lg/cdp;->g:I

    sub-int/2addr v5, v6

    goto :goto_5

    :cond_7
    iget v5, v5, Lg/gzl;->p:I

    :goto_5
    invoke-virtual {p0, p1, v5, v0, v2}, Lg/cdp;->ae(Landroid/graphics/Canvas;III)V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final ac(I)Z
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_5

    iget-object v1, p0, Lg/cdp;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    add-int/2addr p1, v1

    :goto_0
    iget-object v2, p0, Lg/cdp;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lg/cdp;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gzl;

    invoke-virtual {v2}, Lg/gzl;->r()I

    move-result v2

    if-lez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lg/cdp;->aa()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lg/cdp;->m:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    iget p1, p0, Lg/cdp;->e:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    return v1

    :cond_5
    :goto_1
    return v0
.end method

.method public final ad(II)V
    .locals 12

    iget-object v0, p0, Lg/cdp;->k:Lg/ta;

    iget-object v1, p0, Lg/cdp;->d:Lg/fdy;

    iget-object v2, p0, Lg/cdp;->o:Landroid/util/SparseIntArray;

    if-nez v2, :cond_0

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v2, p0, Lg/cdp;->o:Landroid/util/SparseIntArray;

    :cond_0
    iget-object v2, p0, Lg/cdp;->o:Landroid/util/SparseIntArray;

    iget-object v3, v1, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v3, Lg/cdp;

    invoke-virtual {v3}, Lg/cdp;->getFlexItemCount()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    const/4 v6, 0x0

    if-eq v5, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lg/gth;

    invoke-interface {v7}, Lg/gth;->ox()I

    move-result v7

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-eq v7, v8, :cond_2

    :goto_1
    iget-object v2, p0, Lg/cdp;->o:Landroid/util/SparseIntArray;

    iget-object v3, v1, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v3, Lg/cdp;

    invoke-virtual {v3}, Lg/cdp;->getFlexItemCount()I

    move-result v3

    invoke-virtual {v1, v3}, Lg/fdy;->ae(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lg/fdy;->e(ILjava/util/ArrayList;Landroid/util/SparseIntArray;)[I

    move-result-object v2

    iput-object v2, p0, Lg/cdp;->q:[I

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget v2, p0, Lg/cdp;->l:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v2, :cond_6

    const/4 v7, 0x1

    if-eq v2, v7, :cond_6

    if-eq v2, v5, :cond_5

    if-ne v2, v4, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid value for the flex direction is set: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lg/cdp;->l:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    iget-object v2, p0, Lg/cdp;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput-object v3, v0, Lg/ta;->a:Ljava/util/List;

    iput v6, v0, Lg/ta;->b:I

    iget-object v2, p0, Lg/cdp;->d:Lg/fdy;

    iget-object v3, p0, Lg/cdp;->k:Lg/ta;

    invoke-virtual {v2, v3, p2, p1}, Lg/fdy;->x(Lg/ta;II)V

    iget-object v2, v0, Lg/ta;->a:Ljava/util/List;

    iput-object v2, p0, Lg/cdp;->b:Ljava/util/List;

    invoke-virtual {v1, p1, p2}, Lg/fdy;->j(II)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, p1, p2, v3}, Lg/fdy;->af(III)V

    invoke-virtual {v1}, Lg/fdy;->am()V

    iget v1, p0, Lg/cdp;->l:I

    iget v0, v0, Lg/ta;->b:I

    invoke-virtual {p0, v1, p1, p2, v0}, Lg/cdp;->u(IIII)V

    return-void

    :cond_6
    iget-object v2, p0, Lg/cdp;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput-object v3, v0, Lg/ta;->a:Ljava/util/List;

    iput v6, v0, Lg/ta;->b:I

    iget-object v2, p0, Lg/cdp;->d:Lg/fdy;

    iget-object v3, p0, Lg/cdp;->k:Lg/ta;

    invoke-virtual {v2, v3, p1, p2}, Lg/fdy;->x(Lg/ta;II)V

    iget-object v2, v0, Lg/ta;->a:Ljava/util/List;

    iput-object v2, p0, Lg/cdp;->b:Ljava/util/List;

    invoke-virtual {v1, p1, p2}, Lg/fdy;->j(II)V

    iget v2, p0, Lg/cdp;->i:I

    if-ne v2, v4, :cond_a

    iget-object v2, p0, Lg/cdp;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gzl;

    const/high16 v4, -0x80000000

    const/4 v7, 0x0

    :goto_5
    iget v8, v3, Lg/gzl;->a:I

    if-ge v7, v8, :cond_9

    iget v8, v3, Lg/gzl;->c:I

    add-int/2addr v8, v7

    invoke-virtual {p0, v8}, Lg/cdp;->t(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lg/avj;

    iget v10, p0, Lg/cdp;->n:I

    if-eq v10, v5, :cond_7

    iget v10, v3, Lg/gzl;->f:I

    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v10

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_6

    :cond_7
    iget v10, v3, Lg/gzl;->f:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v11

    add-int/2addr v11, v10

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v9

    add-int/2addr v8, v10

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_8
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_9
    iput v4, v3, Lg/gzl;->q:I

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, p1, p2, v3}, Lg/fdy;->af(III)V

    invoke-virtual {v1}, Lg/fdy;->am()V

    iget v1, p0, Lg/cdp;->l:I

    iget v0, v0, Lg/ta;->b:I

    invoke-virtual {p0, v1, p1, p2, v0}, Lg/cdp;->u(IIII)V

    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 8

    iget-object v0, p0, Lg/cdp;->o:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lg/cdp;->o:Landroid/util/SparseIntArray;

    :cond_0
    iget-object v0, p0, Lg/cdp;->d:Lg/fdy;

    iget-object v1, p0, Lg/cdp;->o:Landroid/util/SparseIntArray;

    iget-object v2, v0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v2, Lg/cdp;

    invoke-virtual {v2}, Lg/cdp;->getFlexItemCount()I

    move-result v3

    invoke-virtual {v0, v3}, Lg/fdy;->ae(I)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v4, Lg/dpl;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    instance-of v6, p3, Lg/gth;

    if-eqz v6, :cond_1

    move-object v6, p3

    check-cast v6, Lg/gth;

    invoke-interface {v6}, Lg/gth;->ox()I

    move-result v6

    iput v6, v4, Lg/dpl;->b:I

    goto :goto_0

    :cond_1
    iput v5, v4, Lg/dpl;->b:I

    :goto_0
    const/4 v6, -0x1

    if-eq p2, v6, :cond_4

    if-ne p2, v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lg/cdp;->getFlexItemCount()I

    move-result v2

    if-ge p2, v2, :cond_3

    iput p2, v4, Lg/dpl;->a:I

    move v2, p2

    :goto_1
    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/dpl;

    iget v7, v6, Lg/dpl;->a:I

    add-int/2addr v7, v5

    iput v7, v6, Lg/dpl;->a:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iput v3, v4, Lg/dpl;->a:I

    goto :goto_3

    :cond_4
    :goto_2
    iput v3, v4, Lg/dpl;->a:I

    :cond_5
    :goto_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v5

    invoke-static {v3, v0, v1}, Lg/fdy;->e(ILjava/util/ArrayList;Landroid/util/SparseIntArray;)[I

    move-result-object v0

    iput-object v0, p0, Lg/cdp;->q:[I

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final ae(Landroid/graphics/Canvas;III)V
    .locals 2

    iget-object v0, p0, Lg/cdp;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lg/cdp;->g:I

    add-int/2addr v1, p2

    add-int/2addr p4, p3

    invoke-virtual {v0, p2, p3, v1, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lg/cdp;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lg/avj;

    return p1
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    instance-of v0, p1, Lg/avj;

    if-eqz v0, :cond_0

    new-instance v0, Lg/avj;

    check-cast p1, Lg/avj;

    invoke-direct {v0, p1}, Lg/avj;-><init>(Lg/avj;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lg/avj;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lg/avj;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Lg/avj;

    invoke-direct {v0, p1}, Lg/avj;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAlignContent()I
    .locals 1

    iget v0, p0, Lg/cdp;->j:I

    return v0
.end method

.method public getAlignItems()I
    .locals 1

    iget v0, p0, Lg/cdp;->i:I

    return v0
.end method

.method public getDividerDrawableHorizontal()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lg/cdp;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerDrawableVertical()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lg/cdp;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getFlexDirection()I
    .locals 1

    iget v0, p0, Lg/cdp;->l:I

    return v0
.end method

.method public getFlexItemCount()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getFlexLines()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/gzl;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lg/cdp;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lg/cdp;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gzl;

    invoke-virtual {v2}, Lg/gzl;->r()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFlexLinesInternal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/gzl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/cdp;->b:Ljava/util/List;

    return-object v0
.end method

.method public getFlexWrap()I
    .locals 1

    iget v0, p0, Lg/cdp;->n:I

    return v0
.end method

.method public getJustifyContent()I
    .locals 1

    iget v0, p0, Lg/cdp;->f:I

    return v0
.end method

.method public getLargestMainSize()I
    .locals 3

    iget-object v0, p0, Lg/cdp;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v1, -0x80000000

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gzl;

    iget v2, v2, Lg/gzl;->g:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getMaxLine()I
    .locals 1

    iget v0, p0, Lg/cdp;->r:I

    return v0
.end method

.method public getShowDividerHorizontal()I
    .locals 1

    iget v0, p0, Lg/cdp;->m:I

    return v0
.end method

.method public getShowDividerVertical()I
    .locals 1

    iget v0, p0, Lg/cdp;->e:I

    return v0
.end method

.method public getSumOfCrossSize()I
    .locals 5

    iget-object v0, p0, Lg/cdp;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v3, p0, Lg/cdp;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gzl;

    invoke-virtual {p0, v1}, Lg/cdp;->v(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lg/cdp;->aa()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lg/cdp;->h:I

    :goto_1
    add-int/2addr v2, v4

    goto :goto_2

    :cond_0
    iget v4, p0, Lg/cdp;->g:I

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p0, v1}, Lg/cdp;->ac(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lg/cdp;->aa()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lg/cdp;->h:I

    :goto_3
    add-int/2addr v2, v4

    goto :goto_4

    :cond_2
    iget v4, p0, Lg/cdp;->g:I

    goto :goto_3

    :cond_3
    :goto_4
    iget v3, v3, Lg/gzl;->q:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lg/cdp;->p:Lg/bsq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/eun;->mn()V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lg/cdp;->p:Lg/bsq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/eun;->ia()V

    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lg/cdp;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/cdp;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lg/cdp;->m:I

    if-nez v0, :cond_1

    iget v0, p0, Lg/cdp;->e:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lg/cdp;->l:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_b

    if-eq v1, v4, :cond_8

    if-eq v1, v2, :cond_5

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    :goto_0
    return-void

    :cond_2
    if-ne v0, v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    iget v0, p0, Lg/cdp;->n:I

    if-ne v0, v2, :cond_4

    xor-int/lit8 v3, v3, 0x1

    :cond_4
    invoke-virtual {p0, p1, v3, v4}, Lg/cdp;->ab(Landroid/graphics/Canvas;ZZ)V

    return-void

    :cond_5
    if-ne v0, v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    iget v0, p0, Lg/cdp;->n:I

    if-ne v0, v2, :cond_7

    xor-int/lit8 v4, v4, 0x1

    :cond_7
    invoke-virtual {p0, p1, v4, v3}, Lg/cdp;->ab(Landroid/graphics/Canvas;ZZ)V

    return-void

    :cond_8
    if-eq v0, v4, :cond_9

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lg/cdp;->n:I

    if-ne v1, v2, :cond_a

    const/4 v3, 0x1

    :cond_a
    invoke-virtual {p0, p1, v0, v3}, Lg/cdp;->s(Landroid/graphics/Canvas;ZZ)V

    return-void

    :cond_b
    if-ne v0, v4, :cond_c

    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    const/4 v0, 0x0

    :goto_3
    iget v1, p0, Lg/cdp;->n:I

    if-ne v1, v2, :cond_d

    const/4 v3, 0x1

    :cond_d
    invoke-virtual {p0, p1, v0, v3}, Lg/cdp;->s(Landroid/graphics/Canvas;ZZ)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 7

    iget-object v1, p0, Lg/cdp;->p:Lg/bsq;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lg/eun;->iw()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    iget v2, p0, Lg/cdp;->l:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_9

    if-eq v2, v4, :cond_7

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4

    const/4 v6, 0x3

    if-ne v2, v6, :cond_3

    if-ne v1, v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    iget v1, p0, Lg/cdp;->n:I

    if-ne v1, v5, :cond_2

    xor-int/lit8 v3, v3, 0x1

    :cond_2
    move v4, v3

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lg/cdp;->y(IIIZZI)V

    goto :goto_4

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid flex direction is set: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lg/cdp;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    if-ne v1, v4, :cond_5

    const/4 v3, 0x1

    :cond_5
    iget v1, p0, Lg/cdp;->n:I

    if-ne v1, v5, :cond_6

    xor-int/lit8 v3, v3, 0x1

    :cond_6
    move v4, v3

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lg/cdp;->y(IIIZZI)V

    goto :goto_4

    :cond_7
    if-eq v1, v4, :cond_8

    const/4 v5, 0x1

    :goto_0
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual/range {v0 .. v5}, Lg/cdp;->w(IIIIZ)V

    goto :goto_4

    :cond_9
    if-ne v1, v4, :cond_a

    const/4 v5, 0x1

    :goto_2
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    goto :goto_3

    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    :goto_3
    invoke-virtual/range {v0 .. v5}, Lg/cdp;->w(IIIIZ)V

    :goto_4
    iget-object v1, p0, Lg/cdp;->p:Lg/bsq;

    if-eqz v1, :cond_b

    invoke-interface {v1, p2, p3, p4, p5}, Lg/eun;->dq(IIII)V

    :cond_b
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lg/cdp;->p:Lg/bsq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lg/eun;->dq(II)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-virtual {p0, p2, p1}, Lg/cdp;->ad(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lg/cdp;->ad(II)V

    :goto_0
    iget-object p1, p0, Lg/cdp;->p:Lg/bsq;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lg/eun;->s()V

    :cond_1
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    iget-object v0, p0, Lg/cdp;->p:Lg/bsq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lg/eun;->d(IIII)V

    :cond_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lg/cdp;->p:Lg/bsq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lg/eun;->dq(Z)V

    :cond_0
    return-void
.end method

.method public final s(Landroid/graphics/Canvas;ZZ)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lg/cdp;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_9

    iget-object v5, p0, Lg/cdp;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/gzl;

    const/4 v6, 0x0

    :goto_1
    iget v7, v5, Lg/gzl;->a:I

    if-ge v6, v7, :cond_4

    iget v7, v5, Lg/gzl;->c:I

    add-int/2addr v7, v6

    invoke-virtual {p0, v7}, Lg/cdp;->t(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_3

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lg/avj;

    invoke-virtual {p0, v7, v6}, Lg/cdp;->z(II)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v7

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v10

    goto :goto_2

    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v7, v10

    iget v10, p0, Lg/cdp;->g:I

    sub-int/2addr v7, v10

    :goto_2
    iget v10, v5, Lg/gzl;->m:I

    iget v11, v5, Lg/gzl;->q:I

    invoke-virtual {p0, p1, v7, v10, v11}, Lg/cdp;->ae(Landroid/graphics/Canvas;III)V

    :cond_1
    iget v7, v5, Lg/gzl;->a:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_3

    iget v7, p0, Lg/cdp;->e:I

    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v7, v8

    iget v8, p0, Lg/cdp;->g:I

    sub-int/2addr v7, v8

    goto :goto_3

    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    :goto_3
    iget v8, v5, Lg/gzl;->m:I

    iget v9, v5, Lg/gzl;->q:I

    invoke-virtual {p0, p1, v7, v8, v9}, Lg/cdp;->ae(Landroid/graphics/Canvas;III)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v4}, Lg/cdp;->v(I)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz p3, :cond_5

    iget v6, v5, Lg/gzl;->e:I

    goto :goto_4

    :cond_5
    iget v6, v5, Lg/gzl;->m:I

    iget v7, p0, Lg/cdp;->h:I

    sub-int/2addr v6, v7

    :goto_4
    invoke-virtual {p0, p1, v0, v6, v2}, Lg/cdp;->x(Landroid/graphics/Canvas;III)V

    :cond_6
    invoke-virtual {p0, v4}, Lg/cdp;->ac(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, p0, Lg/cdp;->m:I

    and-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_8

    if-eqz p3, :cond_7

    iget v5, v5, Lg/gzl;->m:I

    iget v6, p0, Lg/cdp;->h:I

    sub-int/2addr v5, v6

    goto :goto_5

    :cond_7
    iget v5, v5, Lg/gzl;->e:I

    :goto_5
    invoke-virtual {p0, p1, v0, v5, v2}, Lg/cdp;->x(Landroid/graphics/Canvas;III)V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public setAlignContent(I)V
    .locals 1

    iget v0, p0, Lg/cdp;->j:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lg/cdp;->j:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setAlignItems(I)V
    .locals 1

    iget v0, p0, Lg/cdp;->i:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lg/cdp;->i:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lg/cdp;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lg/cdp;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lg/cdp;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lg/cdp;->c:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lg/cdp;->h:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lg/cdp;->h:I

    :goto_0
    iget-object p1, p0, Lg/cdp;->c:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    iget-object p1, p0, Lg/cdp;->a:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lg/cdp;->a:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lg/cdp;->a:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lg/cdp;->g:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lg/cdp;->g:I

    :goto_0
    iget-object p1, p0, Lg/cdp;->c:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    iget-object p1, p0, Lg/cdp;->a:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFlexDirection(I)V
    .locals 1

    iget v0, p0, Lg/cdp;->l:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lg/cdp;->l:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setFlexLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/gzl;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lg/cdp;->b:Ljava/util/List;

    return-void
.end method

.method public setFlexWrap(I)V
    .locals 1

    iget v0, p0, Lg/cdp;->n:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lg/cdp;->n:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setJustifyContent(I)V
    .locals 1

    iget v0, p0, Lg/cdp;->f:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lg/cdp;->f:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMaxLine(I)V
    .locals 1

    iget v0, p0, Lg/cdp;->r:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lg/cdp;->r:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDivider(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lg/cdp;->setShowDividerVertical(I)V

    invoke-virtual {p0, p1}, Lg/cdp;->setShowDividerHorizontal(I)V

    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 1

    iget v0, p0, Lg/cdp;->m:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lg/cdp;->m:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividerVertical(I)V
    .locals 1

    iget v0, p0, Lg/cdp;->e:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lg/cdp;->e:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final t(I)Landroid/view/View;
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lg/cdp;->q:[I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    aget p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final u(IIII)V
    .locals 8

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid flex direction: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lg/cdp;->getLargestMainSize()I

    move-result p1

    invoke-virtual {p0}, Lg/cdp;->getSumOfCrossSize()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v5

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lg/cdp;->getSumOfCrossSize()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    add-int/2addr p1, v4

    invoke-virtual {p0}, Lg/cdp;->getLargestMainSize()I

    move-result v4

    :goto_1
    const/high16 v5, 0x1000000

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    if-eq v0, v7, :cond_6

    if-eqz v0, :cond_5

    if-ne v0, v6, :cond_4

    if-ge v1, v4, :cond_3

    invoke-static {p4, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    :cond_3
    invoke-static {v1, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown width mode is set: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-static {v4, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    goto :goto_3

    :cond_6
    if-ge v1, v4, :cond_7

    invoke-static {p4, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    goto :goto_2

    :cond_7
    move v1, v4

    :goto_2
    invoke-static {v1, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    :goto_3
    const/16 v0, 0x100

    if-eq v2, v7, :cond_b

    if-eqz v2, :cond_a

    if-ne v2, v6, :cond_9

    if-ge v3, p1, :cond_8

    invoke-static {p4, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    :cond_8
    invoke-static {v3, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    goto :goto_5

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown height mode is set: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-static {p1, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    goto :goto_5

    :cond_b
    if-ge v3, p1, :cond_c

    invoke-static {p4, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    goto :goto_4

    :cond_c
    move v3, p1

    :goto_4
    invoke-static {v3, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    :goto_5
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final v(I)Z
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_8

    iget-object v1, p0, Lg/cdp;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, p1, :cond_5

    iget-object v3, p0, Lg/cdp;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gzl;

    invoke-virtual {v3}, Lg/gzl;->r()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {p0}, Lg/cdp;->aa()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lg/cdp;->m:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v0

    :cond_2
    iget p1, p0, Lg/cdp;->e:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lg/cdp;->aa()Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lg/cdp;->m:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0

    :cond_7
    iget p1, p0, Lg/cdp;->e:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_8

    return v2

    :cond_8
    :goto_1
    return v0
.end method

.method public final w(IIIIZ)V
    .locals 24

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int v3, p4, p2

    sub-int v4, p3, p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, v0, Lg/cdp;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_12

    iget-object v9, v0, Lg/cdp;->b:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Lg/gzl;

    invoke-virtual {v0, v8}, Lg/cdp;->v(I)Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, v0, Lg/cdp;->h:I

    sub-int/2addr v3, v9

    add-int/2addr v5, v9

    :cond_0
    move/from16 v16, v3

    iget v3, v0, Lg/cdp;->f:I

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v13, 0x1

    if-eqz v3, :cond_9

    if-eq v3, v13, :cond_8

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v3, v10, :cond_7

    const/4 v15, 0x3

    if-eq v3, v15, :cond_5

    if-eq v3, v9, :cond_3

    const/4 v14, 0x5

    if-ne v3, v14, :cond_2

    invoke-virtual {v12}, Lg/gzl;->r()I

    move-result v3

    if-eqz v3, :cond_1

    iget v14, v12, Lg/gzl;->g:I

    sub-int v14, v4, v14

    int-to-float v14, v14

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    div-float/2addr v14, v3

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    int-to-float v3, v1

    add-float/2addr v3, v14

    sub-int v15, v4, v2

    int-to-float v15, v15

    sub-float/2addr v15, v14

    goto/16 :goto_5

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid justifyContent is set: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lg/cdp;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {v12}, Lg/gzl;->r()I

    move-result v3

    if-eqz v3, :cond_4

    iget v15, v12, Lg/gzl;->g:I

    sub-int v15, v4, v15

    int-to-float v15, v15

    int-to-float v3, v3

    div-float/2addr v15, v3

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    int-to-float v3, v1

    div-float v14, v15, v14

    add-float/2addr v3, v14

    sub-int v7, v4, v2

    int-to-float v7, v7

    sub-float/2addr v7, v14

    move v14, v15

    move v15, v7

    goto :goto_5

    :cond_5
    int-to-float v3, v1

    invoke-virtual {v12}, Lg/gzl;->r()I

    move-result v7

    if-eq v7, v13, :cond_6

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    goto :goto_3

    :cond_6
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_3
    iget v14, v12, Lg/gzl;->g:I

    sub-int v14, v4, v14

    int-to-float v14, v14

    div-float/2addr v14, v7

    sub-int v7, v4, v2

    int-to-float v15, v7

    goto :goto_5

    :cond_7
    int-to-float v3, v1

    iget v7, v12, Lg/gzl;->g:I

    sub-int v15, v4, v7

    int-to-float v15, v15

    div-float/2addr v15, v14

    add-float/2addr v3, v15

    sub-int v15, v4, v2

    int-to-float v15, v15

    sub-int v7, v4, v7

    int-to-float v7, v7

    div-float/2addr v7, v14

    sub-float/2addr v15, v7

    :goto_4
    const/4 v14, 0x0

    goto :goto_5

    :cond_8
    iget v3, v12, Lg/gzl;->g:I

    sub-int v7, v4, v3

    add-int/2addr v7, v2

    int-to-float v7, v7

    sub-int/2addr v3, v1

    int-to-float v15, v3

    move v3, v7

    goto :goto_4

    :cond_9
    int-to-float v3, v1

    sub-int v7, v4, v2

    int-to-float v15, v7

    goto :goto_4

    :goto_5
    invoke-static {v14, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/4 v11, 0x0

    :goto_6
    iget v14, v12, Lg/gzl;->a:I

    if-ge v11, v14, :cond_11

    iget v14, v12, Lg/gzl;->c:I

    add-int/2addr v14, v11

    invoke-virtual {v0, v14}, Lg/cdp;->t(I)Landroid/view/View;

    move-result-object v17

    const/16 p2, 0x4

    if-eqz v17, :cond_10

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 p3, 0x1

    const/16 v13, 0x8

    if-eq v9, v13, :cond_10

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lg/avj;

    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v13, v13

    add-float/2addr v3, v13

    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v13, v13

    sub-float/2addr v15, v13

    invoke-virtual {v0, v14, v11}, Lg/cdp;->z(II)Z

    move-result v13

    if-eqz v13, :cond_a

    iget v13, v0, Lg/cdp;->g:I

    int-to-float v14, v13

    add-float/2addr v3, v14

    sub-float/2addr v15, v14

    move/from16 v18, v13

    :goto_7
    move/from16 v19, v15

    goto :goto_8

    :cond_a
    const/16 v18, 0x0

    goto :goto_7

    :goto_8
    iget v13, v12, Lg/gzl;->a:I

    add-int/lit8 v13, v13, -0x1

    if-ne v11, v13, :cond_b

    iget v13, v0, Lg/cdp;->e:I

    and-int/lit8 v13, v13, 0x4

    if-lez v13, :cond_b

    iget v13, v0, Lg/cdp;->g:I

    move/from16 v20, v13

    goto :goto_9

    :cond_b
    const/16 v20, 0x0

    :goto_9
    iget v13, v0, Lg/cdp;->n:I

    if-ne v13, v10, :cond_d

    if-eqz p5, :cond_c

    const/4 v13, 0x2

    iget-object v10, v0, Lg/cdp;->d:Lg/fdy;

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int v15, v16, v15

    move v13, v14

    move v14, v15

    const/16 v21, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v15

    move-object/from16 v22, v17

    move/from16 v17, v11

    move-object/from16 v11, v22

    const/16 v22, 0x1

    invoke-virtual/range {v10 .. v16}, Lg/fdy;->aa(Landroid/view/View;Lg/gzl;IIII)V

    :goto_a
    move/from16 v23, v16

    goto :goto_b

    :cond_c
    move-object/from16 v21, v17

    move/from16 v17, v11

    move-object/from16 v11, v21

    const/16 v21, 0x2

    const/16 v22, 0x1

    iget-object v10, v0, Lg/cdp;->d:Lg/fdy;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int v14, v16, v14

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v15, v23, v15

    invoke-virtual/range {v10 .. v16}, Lg/fdy;->aa(Landroid/view/View;Lg/gzl;IIII)V

    goto :goto_a

    :cond_d
    move-object/from16 v21, v17

    move/from16 v17, v11

    move-object/from16 v11, v21

    move/from16 v23, v16

    const/16 v21, 0x2

    const/16 v22, 0x1

    if-eqz p5, :cond_e

    iget-object v10, v0, Lg/cdp;->d:Lg/fdy;

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int v16, v14, v5

    move v14, v5

    invoke-virtual/range {v10 .. v16}, Lg/fdy;->aa(Landroid/view/View;Lg/gzl;IIII)V

    goto :goto_b

    :cond_e
    move v14, v5

    iget-object v10, v0, Lg/cdp;->d:Lg/fdy;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v5

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int v16, v5, v14

    invoke-virtual/range {v10 .. v16}, Lg/fdy;->aa(Landroid/view/View;Lg/gzl;IIII)V

    move v5, v14

    :goto_b
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v7

    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v13, v13

    add-float/2addr v10, v13

    add-float/2addr v3, v10

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v7

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v9, v9

    add-float/2addr v10, v9

    sub-float v19, v19, v10

    if-eqz p5, :cond_f

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v10, v12

    move/from16 v14, v18

    move/from16 v12, v20

    invoke-virtual/range {v10 .. v15}, Lg/gzl;->s(Landroid/view/View;IIII)V

    :goto_c
    move-object v12, v10

    goto :goto_d

    :cond_f
    move/from16 v14, v18

    move/from16 v13, v20

    const/4 v9, 0x0

    const/4 v15, 0x0

    move-object v10, v12

    move v12, v14

    move v14, v13

    const/4 v13, 0x0

    invoke-virtual/range {v10 .. v15}, Lg/gzl;->s(Landroid/view/View;IIII)V

    goto :goto_c

    :goto_d
    move/from16 v15, v19

    goto :goto_e

    :cond_10
    move/from16 v17, v11

    move/from16 v23, v16

    const/16 v21, 0x2

    const/16 v22, 0x1

    :goto_e
    add-int/lit8 v11, v17, 0x1

    move/from16 v16, v23

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v13, 0x1

    goto/16 :goto_6

    :cond_11
    move/from16 v23, v16

    iget v3, v12, Lg/gzl;->q:I

    add-int/2addr v5, v3

    sub-int v3, v23, v3

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_12
    return-void
.end method

.method public final x(Landroid/graphics/Canvas;III)V
    .locals 2

    iget-object v0, p0, Lg/cdp;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int/2addr p4, p2

    iget v1, p0, Lg/cdp;->h:I

    add-int/2addr v1, p3

    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lg/cdp;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final y(IIIZZI)V
    .locals 24

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int v5, p3, p1

    sub-int v6, p6, p2

    sub-int/2addr v5, v3

    iget-object v3, v0, Lg/cdp;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_13

    iget-object v9, v0, Lg/cdp;->b:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Lg/gzl;

    invoke-virtual {v0, v8}, Lg/cdp;->v(I)Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, v0, Lg/cdp;->g:I

    add-int/2addr v4, v9

    sub-int/2addr v5, v9

    :cond_0
    move/from16 v16, v5

    iget v5, v0, Lg/cdp;->f:I

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v5, :cond_9

    if-eq v5, v11, :cond_8

    const/4 v13, 0x2

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v5, v13, :cond_7

    const/4 v13, 0x3

    if-eq v5, v13, :cond_5

    if-eq v5, v9, :cond_3

    const/4 v13, 0x5

    if-ne v5, v13, :cond_2

    invoke-virtual {v12}, Lg/gzl;->r()I

    move-result v5

    if-eqz v5, :cond_1

    iget v13, v12, Lg/gzl;->g:I

    sub-int v13, v6, v13

    int-to-float v13, v13

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    div-float/2addr v13, v5

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    int-to-float v5, v1

    add-float/2addr v5, v13

    sub-int v14, v6, v2

    int-to-float v14, v14

    sub-float/2addr v14, v13

    goto :goto_5

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid justifyContent is set: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lg/cdp;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {v12}, Lg/gzl;->r()I

    move-result v5

    if-eqz v5, :cond_4

    iget v13, v12, Lg/gzl;->g:I

    sub-int v13, v6, v13

    int-to-float v13, v13

    int-to-float v5, v5

    div-float/2addr v13, v5

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    :goto_2
    int-to-float v5, v1

    div-float v14, v13, v14

    add-float/2addr v5, v14

    sub-int v15, v6, v2

    int-to-float v15, v15

    sub-float v14, v15, v14

    goto :goto_5

    :cond_5
    int-to-float v5, v1

    invoke-virtual {v12}, Lg/gzl;->r()I

    move-result v13

    if-eq v13, v11, :cond_6

    add-int/lit8 v13, v13, -0x1

    int-to-float v13, v13

    goto :goto_3

    :cond_6
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_3
    iget v14, v12, Lg/gzl;->g:I

    sub-int v14, v6, v14

    int-to-float v14, v14

    div-float v13, v14, v13

    sub-int v14, v6, v2

    int-to-float v14, v14

    goto :goto_5

    :cond_7
    int-to-float v5, v1

    iget v13, v12, Lg/gzl;->g:I

    sub-int v13, v6, v13

    int-to-float v13, v13

    div-float/2addr v13, v14

    add-float/2addr v5, v13

    sub-int v14, v6, v2

    int-to-float v14, v14

    sub-float/2addr v14, v13

    :goto_4
    const/4 v13, 0x0

    goto :goto_5

    :cond_8
    iget v5, v12, Lg/gzl;->g:I

    sub-int v13, v6, v5

    add-int/2addr v13, v2

    int-to-float v13, v13

    sub-int/2addr v5, v1

    int-to-float v14, v5

    move v5, v13

    goto :goto_4

    :cond_9
    int-to-float v5, v1

    sub-int v13, v6, v2

    int-to-float v14, v13

    goto :goto_4

    :goto_5
    invoke-static {v13, v10}, Ljava/lang/Math;->max(FF)F

    move-result v18

    const/4 v10, 0x0

    :goto_6
    iget v13, v12, Lg/gzl;->a:I

    if-ge v10, v13, :cond_12

    iget v13, v12, Lg/gzl;->c:I

    add-int/2addr v13, v10

    const/4 v15, 0x1

    invoke-virtual {v0, v13}, Lg/cdp;->t(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 p2, 0x4

    const/16 v9, 0x8

    if-eq v7, v9, :cond_10

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lg/avj;

    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v9, v9

    add-float/2addr v5, v9

    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v9, v9

    sub-float/2addr v14, v9

    invoke-virtual {v0, v13, v10}, Lg/cdp;->z(II)Z

    move-result v9

    if-eqz v9, :cond_a

    iget v9, v0, Lg/cdp;->h:I

    int-to-float v13, v9

    add-float/2addr v5, v13

    sub-float/2addr v14, v13

    :goto_7
    move/from16 v19, v14

    goto :goto_8

    :cond_a
    const/4 v9, 0x0

    goto :goto_7

    :goto_8
    iget v13, v12, Lg/gzl;->a:I

    sub-int/2addr v13, v15

    if-ne v10, v13, :cond_b

    iget v13, v0, Lg/cdp;->m:I

    and-int/lit8 v13, v13, 0x4

    if-lez v13, :cond_b

    iget v13, v0, Lg/cdp;->h:I

    move/from16 v20, v13

    goto :goto_9

    :cond_b
    const/16 v20, 0x0

    :goto_9
    if-eqz p4, :cond_d

    if-eqz p5, :cond_c

    move v13, v10

    iget-object v10, v0, Lg/cdp;->d:Lg/fdy;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v16, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v17

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v17, v17, v21

    move/from16 v15, v17

    const/16 v21, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v22, v13

    const/4 v13, 0x1

    invoke-virtual/range {v10 .. v17}, Lg/fdy;->ah(Landroid/view/View;Lg/gzl;ZIIII)V

    :goto_a
    move/from16 v23, v16

    goto :goto_b

    :cond_c
    move/from16 v22, v10

    const/16 v21, 0x1

    iget-object v10, v0, Lg/cdp;->d:Lg/fdy;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v14, v16, v13

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v17, v17, v13

    const/4 v13, 0x1

    invoke-virtual/range {v10 .. v17}, Lg/fdy;->ah(Landroid/view/View;Lg/gzl;ZIIII)V

    goto :goto_a

    :cond_d
    move/from16 v22, v10

    move/from16 v23, v16

    const/16 v21, 0x1

    if-eqz p5, :cond_e

    iget-object v10, v0, Lg/cdp;->d:Lg/fdy;

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int v15, v13, v14

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int v16, v13, v4

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v17

    const/4 v13, 0x0

    move v14, v4

    invoke-virtual/range {v10 .. v17}, Lg/fdy;->ah(Landroid/view/View;Lg/gzl;ZIIII)V

    goto :goto_b

    :cond_e
    move v14, v4

    iget-object v10, v0, Lg/cdp;->d:Lg/fdy;

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v16, v4, v14

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int v17, v13, v4

    const/4 v13, 0x0

    invoke-virtual/range {v10 .. v17}, Lg/fdy;->ah(Landroid/view/View;Lg/gzl;ZIIII)V

    move v4, v14

    :goto_b
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    add-float v10, v10, v18

    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v13, v13

    add-float/2addr v10, v13

    add-float/2addr v5, v10

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    add-float v10, v10, v18

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v7, v7

    add-float/2addr v10, v7

    sub-float v19, v19, v10

    if-eqz p5, :cond_f

    move-object v10, v12

    const/4 v12, 0x0

    const/4 v14, 0x0

    move v15, v9

    move/from16 v13, v20

    invoke-virtual/range {v10 .. v15}, Lg/gzl;->s(Landroid/view/View;IIII)V

    :goto_c
    move-object v12, v10

    goto :goto_d

    :cond_f
    move v13, v9

    move-object v10, v12

    move/from16 v15, v20

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v10 .. v15}, Lg/gzl;->s(Landroid/view/View;IIII)V

    goto :goto_c

    :goto_d
    move/from16 v14, v19

    goto :goto_f

    :cond_10
    :goto_e
    move/from16 v22, v10

    move/from16 v23, v16

    const/16 v21, 0x1

    goto :goto_f

    :cond_11
    const/16 p2, 0x4

    goto :goto_e

    :goto_f
    add-int/lit8 v10, v22, 0x1

    move/from16 v16, v23

    const/4 v9, 0x4

    const/4 v11, 0x1

    goto/16 :goto_6

    :cond_12
    move/from16 v23, v16

    iget v5, v12, Lg/gzl;->q:I

    add-int/2addr v4, v5

    sub-int v5, v23, v5

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method public final z(II)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    if-gt v1, p2, :cond_4

    sub-int v3, p1, v1

    invoke-virtual {p0, v3}, Lg/cdp;->t(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    invoke-virtual {p0}, Lg/cdp;->aa()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lg/cdp;->e:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    return v0

    :cond_0
    return v2

    :cond_1
    iget p1, p0, Lg/cdp;->m:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lg/cdp;->aa()Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Lg/cdp;->e:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_5

    return v0

    :cond_5
    return v2

    :cond_6
    iget p1, p0, Lg/cdp;->m:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    return v0

    :cond_7
    return v2
.end method

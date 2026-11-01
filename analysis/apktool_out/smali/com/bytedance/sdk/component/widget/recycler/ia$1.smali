.class final Lcom/bytedance/sdk/component/widget/recycler/ia$1;
.super Lcom/bytedance/sdk/component/widget/recycler/ia;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/ia;-><init>(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Lcom/bytedance/sdk/component/widget/recycler/ia$1;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->kk(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public dq(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->mn(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->kk(I)V

    return-void
.end method

.method public ia()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->le()I

    move-result v0

    return v0
.end method

.method public iw()I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->wp()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->kx()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ji()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public iw(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->iw(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public mn()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ji()I

    move-result v0

    return v0
.end method

.method public ox()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->kx()I

    move-result v0

    return v0
.end method

.method public ox(Landroid/view/View;)I
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->dq(Landroid/view/View;ZLandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->d:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    return p1
.end method

.method public p()I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->wp()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ji()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public p(Landroid/view/View;)I
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->dq(Landroid/view/View;ZLandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->d:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    return p1
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->wp()I

    move-result v0

    return v0
.end method

.method public s(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->s(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

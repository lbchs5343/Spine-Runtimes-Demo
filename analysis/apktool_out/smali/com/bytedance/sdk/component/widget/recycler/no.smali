.class public abstract Lcom/bytedance/sdk/component/widget/recycler/no;
.super Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;


# instance fields
.field ia:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/no;->ia:Z

    return-void
.end method


# virtual methods
.method public abstract d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)Z
.end method

.method public d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)Z
    .locals 6

    if-eqz p2, :cond_0

    iget v2, p2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->dq:I

    iget v4, p3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->dq:I

    if-ne v2, v4, :cond_1

    iget v0, p2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->d:I

    iget v1, p3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->d:I

    if-ne v0, v1, :cond_1

    :cond_0
    move-object v1, p1

    goto :goto_0

    :cond_1
    iget v3, p2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->d:I

    iget v5, p3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->d:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/component/widget/recycler/no;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;IIII)Z

    move-result p1

    return p1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/widget/recycler/no;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)Z

    move-result p1

    return p1
.end method

.method public final dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->iw(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    return-void
.end method

.method public abstract dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)Z
.end method

.method public abstract dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;IIII)Z
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)Z
    .locals 6

    iget v2, p2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->dq:I

    iget v3, p2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->d:I

    iget-object p2, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    iget v0, p3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->dq:I

    goto :goto_0

    :goto_1
    if-nez p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    :goto_2
    move v5, p3

    goto :goto_3

    :cond_1
    iget p3, p3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->d:I

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->i()Z

    move-result p3

    if-nez p3, :cond_2

    if-ne v2, v4, :cond_3

    if-ne v3, v5, :cond_3

    :cond_2
    move-object v1, p1

    goto :goto_4

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {p2, v4, v5, p3, v0}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/component/widget/recycler/no;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;IIII)Z

    move-result p1

    return p1

    :goto_4
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/widget/recycler/no;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)Z

    move-result p1

    return p1
.end method

.method public abstract dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;IIII)Z
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)Z
    .locals 7

    iget v3, p3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->dq:I

    iget v4, p3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->d:I

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p4, p3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->dq:I

    iget p3, p3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->d:I

    move v6, p3

    move v5, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    goto :goto_1

    :cond_0
    iget p3, p4, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->dq:I

    iget p4, p4, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->d:I

    move v5, p3

    move v6, p4

    goto :goto_0

    :goto_1
    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/component/widget/recycler/no;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;IIII)Z

    move-result p1

    return p1
.end method

.method public final ia(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->iw(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    return-void
.end method

.method public final kk(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->iw(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    return-void
.end method

.method public mn(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/no;->ia:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->cd()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final o(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->iw(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    return-void
.end method

.method public ox(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)Z
    .locals 6

    iget v2, p2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->dq:I

    iget v4, p3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->dq:I

    if-ne v2, v4, :cond_0

    iget v0, p2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->d:I

    iget v1, p3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->d:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/no;->kk(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v3, p2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->d:I

    iget v5, p3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->d:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/component/widget/recycler/no;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;IIII)Z

    move-result p1

    return p1
.end method

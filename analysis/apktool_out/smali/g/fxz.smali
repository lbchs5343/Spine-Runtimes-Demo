.class public final Lg/fxz;
.super Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$ia;

# interfaces
.implements Lg/gqj;


# instance fields
.field public a:I


# virtual methods
.method public final d()V
    .locals 0

    return-void
.end method

.method public final dq()V
    .locals 0

    return-void
.end method

.method public final dq(Landroid/graphics/Rect;Landroid/view/View;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$ia;->dq(Landroid/graphics/Rect;Landroid/view/View;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)V

    iget p4, p0, Lg/fxz;->a:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    iput p4, p1, Landroid/graphics/Rect;->right:I

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->iw(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_0

    iput p4, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method

.method public final ox()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

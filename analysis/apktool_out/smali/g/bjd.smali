.class public final Lg/bjd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Landroidx/recyclerview/widget/b;

.field public c:I

.field public final d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/b;I)V
    .locals 0

    iput p2, p0, Lg/bjd;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p2, -0x80000000

    iput p2, p0, Lg/bjd;->c:I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lg/bjd;->d:Landroid/graphics/Rect;

    iput-object p1, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    return-void
.end method

.method public static e(Landroidx/recyclerview/widget/b;I)Lg/bjd;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Lg/bjd;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lg/bjd;-><init>(Landroidx/recyclerview/widget/b;I)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lg/bjd;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lg/bjd;-><init>(Landroidx/recyclerview/widget/b;I)V

    return-object p1
.end method


# virtual methods
.method public final f()I
    .locals 1

    iget v0, p0, Lg/bjd;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->er()I

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->fj()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()I
    .locals 3

    iget v0, p0, Lg/bjd;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    iget v1, v0, Landroidx/recyclerview/widget/b;->dn:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->fd()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->er()I

    move-result v0

    :goto_0
    sub-int/2addr v1, v0

    return v1

    :pswitch_0
    iget-object v0, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    iget v1, v0, Landroidx/recyclerview/widget/b;->do:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->eq()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->fj()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(I)V
    .locals 1

    iget v0, p0, Lg/bjd;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->ez(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->fe(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Landroid/view/View;)I
    .locals 2

    iget v0, p0, Lg/bjd;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/yx;

    iget-object v1, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/recyclerview/widget/b;->eg(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    add-int/2addr p1, v0

    return p1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/yx;

    iget-object v1, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/recyclerview/widget/b;->ea(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Landroid/view/View;)I
    .locals 2

    iget v0, p0, Lg/bjd;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    iget-object v1, p0, Lg/bjd;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/b;->ew(Landroid/graphics/Rect;Landroid/view/View;)V

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    return p1

    :pswitch_0
    iget-object v0, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    iget-object v1, p0, Lg/bjd;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/b;->ew(Landroid/graphics/Rect;Landroid/view/View;)V

    iget p1, v1, Landroid/graphics/Rect;->right:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Landroid/view/View;)I
    .locals 2

    iget v0, p0, Lg/bjd;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/yx;

    iget-object v1, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lg/yx;

    iget-object p1, p1, Lg/yx;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_0
    sub-int/2addr v1, p1

    return v1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/yx;

    iget-object v1, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lg/yx;

    iget-object p1, p1, Lg/yx;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lg/bjd;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    iget v0, v0, Landroidx/recyclerview/widget/b;->dn:I

    return v0

    :pswitch_0
    iget-object v0, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    iget v0, v0, Landroidx/recyclerview/widget/b;->do:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final m(Landroid/view/View;)I
    .locals 2

    iget v0, p0, Lg/bjd;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    iget-object v1, p0, Lg/bjd;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/b;->ew(Landroid/graphics/Rect;Landroid/view/View;)V

    iget p1, v1, Landroid/graphics/Rect;->top:I

    return p1

    :pswitch_0
    iget-object v0, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    iget-object v1, p0, Lg/bjd;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/b;->ew(Landroid/graphics/Rect;Landroid/view/View;)V

    iget p1, v1, Landroid/graphics/Rect;->left:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lg/bjd;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    iget v0, v0, Landroidx/recyclerview/widget/b;->du:I

    return v0

    :pswitch_0
    iget-object v0, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    iget v0, v0, Landroidx/recyclerview/widget/b;->dq:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Landroid/view/View;)I
    .locals 2

    iget v0, p0, Lg/bjd;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/yx;

    iget-object v1, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lg/yx;

    iget-object p1, p1, Lg/yx;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    add-int/2addr v1, p1

    return v1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/yx;

    iget-object v1, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lg/yx;

    iget-object p1, p1, Lg/yx;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Lg/bjd;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->fd()I

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->eq()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Landroid/view/View;)I
    .locals 2

    iget v0, p0, Lg/bjd;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/yx;

    iget-object v1, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/recyclerview/widget/b;->ea(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    add-int/2addr p1, v0

    return p1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/yx;

    iget-object v1, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/recyclerview/widget/b;->eg(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final r()I
    .locals 2

    iget v0, p0, Lg/bjd;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    iget v1, v0, Landroidx/recyclerview/widget/b;->dn:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->er()I

    move-result v0

    :goto_0
    sub-int/2addr v1, v0

    return v1

    :pswitch_0
    iget-object v0, p0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    iget v1, v0, Landroidx/recyclerview/widget/b;->do:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->fj()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

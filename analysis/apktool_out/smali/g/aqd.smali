.class public final Lg/aqd;
.super Lg/efb;


# instance fields
.field public a:Z

.field public aa:Ljava/lang/String;

.field public ab:Ljava/lang/String;

.field public ac:Z

.field public g:I

.field public w:Lg/coy;

.field public y:I


# virtual methods
.method public final ad(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/aqd;->ab:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "row_reverse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "column"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "column_reverse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/fmg;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/fmg;

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_3
    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/fmg;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_4
    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/fmg;

    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a28e907 -> :sswitch_3
        -0x50c12caa -> :sswitch_2
        -0xc62c683 -> :sswitch_1
        0x1b9da -> :sswitch_0
    .end sparse-switch
.end method

.method public final dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lg/efb;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "highlightBackgroundColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "highlightedTextColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "highlightTextColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "direction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    const/high16 p1, -0x1000000

    packed-switch v3, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, "linear-gradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Lg/dlv;->x:Z

    invoke-static {p2}, Lg/bff;->ak(Ljava/lang/String;)Lg/coy;

    move-result-object p1

    iput-object p1, p0, Lg/aqd;->w:Lg/coy;

    goto :goto_2

    :cond_6
    :goto_1
    invoke-static {p2, p1}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lg/aqd;->g:I

    iput-boolean v1, p0, Lg/dlv;->x:Z

    :goto_2
    iput-boolean v2, p0, Lg/aqd;->a:Z

    return-void

    :pswitch_1
    iput-object p2, p0, Lg/aqd;->aa:Ljava/lang/String;

    return-void

    :pswitch_2
    invoke-static {p2, p1}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lg/aqd;->y:I

    iput-boolean v2, p0, Lg/aqd;->ac:Z

    return-void

    :pswitch_3
    iput-object p2, p0, Lg/aqd;->ab:Ljava/lang/String;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x395ff881 -> :sswitch_4
        -0x3037341e -> :sswitch_3
        -0x634c0dd -> :sswitch_2
        0x5faa95b -> :sswitch_1
        0x432ba381 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j()V
    .locals 2

    invoke-super {p0}, Lg/dlv;->j()V

    iget-boolean v0, p0, Lg/aqd;->ac:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/fmg;

    iget v1, p0, Lg/aqd;->y:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-boolean v0, p0, Lg/aqd;->a:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lg/dlv;->x:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/aqd;->w:Lg/coy;

    invoke-virtual {p0, v0}, Lg/dlv;->dq(Lg/coy;)V

    return-void

    :cond_1
    iget v0, p0, Lg/aqd;->g:I

    invoke-virtual {p0, v0}, Lg/dlv;->ox(I)V

    :cond_2
    return-void
.end method

.method public final nh()V
    .locals 2

    invoke-super {p0}, Lg/dlv;->nh()V

    iget-boolean v0, p0, Lg/aqd;->ac:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/fmg;

    iget v1, p0, Lg/efb;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-boolean v0, p0, Lg/aqd;->a:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lg/dlv;->x:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/dlv;->bx:Lg/coy;

    invoke-virtual {p0, v0}, Lg/dlv;->dq(Lg/coy;)V

    return-void

    :cond_1
    iget v0, p0, Lg/dlv;->j:I

    invoke-virtual {p0, v0}, Lg/dlv;->ox(I)V

    :cond_2
    return-void
.end method

.method public final p()V
    .locals 5

    invoke-super {p0}, Lg/efb;->p()V

    iget-object v0, p0, Lg/aqd;->aa:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/fmg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lg/aqd;->aa:Ljava/lang/String;

    const-string v1, "local://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lg/aqd;->aa:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/dlv;->s:Landroid/content/Context;

    const-string v2, "drawable"

    invoke-static {v1, v0, v2}, Lg/acw;->as(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v2, Lg/dxo;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/aqd;->ad(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lg/fzn;->j()Lg/fzn;

    move-result-object v0

    iget-object v0, v0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p;

    iget-object v1, p0, Lg/dlv;->ig:Lg/dmm;

    iget-object v2, p0, Lg/aqd;->aa:Ljava/lang/String;

    new-instance v3, Lg/evf;

    const/16 v4, 0x15

    invoke-direct {v3, v4, p0}, Lg/evf;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1, v2, v3}, Lg/ayp;->dq(Lg/dmm;Ljava/lang/String;Lg/ebz;)V

    :catchall_0
    :goto_0
    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/fmg;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

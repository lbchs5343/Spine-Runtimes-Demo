.class public final Lg/bau;
.super Lg/csm;
.source "SourceFile"


# virtual methods
.method public final c(Lg/bcq;Lg/auj;)V
    .locals 4

    const-string v0, "appViewHolder"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lg/bcq;->am:Landroid/widget/TextView;

    const-string v1, "appInfo"

    invoke-static {p2, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lg/bcq;->al:Landroid/view/ViewGroup;

    new-instance v2, Lg/aww;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3, p2}, Lg/aww;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lg/bcq;->ak:Landroid/widget/ImageView;

    const/4 v2, 0x1

    iget-object v3, p0, Lg/csm;->e:Lg/efx;

    invoke-virtual {p2, v3, v2}, Lg/auj;->l(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p1, Lg/bcq;->an:Landroid/widget/TextView;

    iget-object p2, p2, Lg/auj;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lg/csm;->f:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f12036b

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(...)"

    invoke-static {p1, p2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

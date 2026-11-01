.class public final Lg/gmi;
.super Lg/csm;
.source "SourceFile"


# instance fields
.field public h:Lg/cgg;


# virtual methods
.method public final c(Lg/bcq;Lg/auj;)V
    .locals 4

    iget-object v0, p1, Lg/bcq;->al:Landroid/view/ViewGroup;

    iget-object v1, p1, Lg/bcq;->am:Landroid/widget/TextView;

    new-instance v2, Lg/anh;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3, p2}, Lg/anh;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lg/bcq;->al:Landroid/view/ViewGroup;

    new-instance v2, Lg/esb;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p1, Lg/bcq;->ak:Landroid/widget/ImageView;

    iget-object v2, p0, Lg/csm;->e:Lg/efx;

    invoke-virtual {p2, v2, v3}, Lg/auj;->l(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p1, Lg/bcq;->an:Landroid/widget/TextView;

    iget-object v0, p2, Lg/auj;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lg/csm;->f:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p2, Lg/auj;->h:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

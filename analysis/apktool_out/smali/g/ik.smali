.class public final Lg/ik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ekf;


# instance fields
.field public c:Lc/a/a;

.field public d:Z

.field public e:Z


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/p;
    .locals 3

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/fhc;

    const v1, 0x7f0c0056

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lg/fhc;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final b(Landroidx/recyclerview/widget/p;Lg/cng;)V
    .locals 8

    check-cast p1, Lg/fhc;

    iget-object v0, p0, Lg/ik;->c:Lc/a/a;

    iget-boolean v1, p0, Lg/ik;->d:Z

    iget-boolean v2, p0, Lg/ik;->e:Z

    check-cast p2, Lg/gzr;

    iget-object v3, p1, Lg/fhc;->ak:Landroid/widget/TextView;

    iget-object v4, p1, Lg/fhc;->al:Landroid/widget/ImageView;

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p2, Lg/gzr;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lg/aww;

    const/4 v7, 0x4

    invoke-direct {v1, v0, v7, p2}, Lg/aww;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Lg/gzr;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p1, p1, Lg/fhc;->am:Landroid/widget/TextView;

    iget-object p2, p2, Lg/gzr;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

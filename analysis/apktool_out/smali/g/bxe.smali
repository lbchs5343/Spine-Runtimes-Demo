.class public final Lg/bxe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ekf;


# instance fields
.field public c:Z

.field public d:Z


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/p;
    .locals 3

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/aam;

    const v1, 0x7f0c0071

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lg/aam;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final b(Landroidx/recyclerview/widget/p;Lg/cng;)V
    .locals 6

    check-cast p1, Lg/aam;

    iget-boolean v0, p0, Lg/bxe;->c:Z

    iget-boolean v1, p0, Lg/bxe;->d:Z

    check-cast p2, Lg/vc;

    iget-object v2, p1, Lg/aam;->al:Landroid/widget/TextView;

    iget-object v3, p2, Lg/vc;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lg/aam;->ak:Landroid/widget/TextView;

    iget-object v5, p2, Lg/vc;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lg/aam;->am:Landroid/widget/TextView;

    iget-wide v4, p2, Lg/vc;->a:J

    sget-object p2, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {v4, v5, p2}, Lg/dlb;->d(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

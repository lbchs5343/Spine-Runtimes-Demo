.class public final Lg/wq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/util/SparseArray;

.field public b:Landroid/util/SparseArray;

.field public c:Lg/dms;

.field public d:Landroid/view/View$OnClickListener;

.field public e:Lg/dms;

.field public f:Z

.field public g:Landroid/view/View$OnLongClickListener;


# virtual methods
.method public final h()V
    .locals 4

    iget-object v0, p0, Lg/wq;->e:Lg/dms;

    const v1, 0x7f090360

    invoke-virtual {v0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lg/ub;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lg/fso;->av(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Lg/ub;->getSupportActionBar()Lg/gkl;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lg/ub;->getSupportActionBar()Lg/gkl;

    move-result-object v2

    iget-object v3, p0, Lg/wq;->c:Lg/dms;

    invoke-interface {v3}, Lg/aa;->isDisplayHomeAsUpEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lg/gkl;->ai(Z)V

    :cond_1
    if-eqz v1, :cond_3

    iget-object v2, p0, Lg/wq;->d:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v2, p0, Lg/wq;->g:Landroid/view/View$OnLongClickListener;

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_3
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lg/fso;->av(Landroid/view/View;Z)V

    :cond_4
    return-void
.end method

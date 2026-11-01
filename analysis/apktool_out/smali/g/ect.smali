.class public abstract Lg/ect;
.super Landroidx/recyclerview/widget/m;
.source "SourceFile"


# instance fields
.field public i:Lg/fsz;


# virtual methods
.method public onBindViewHolder(Landroidx/recyclerview/widget/p;I)V
    .locals 2

    iget-object p2, p0, Lg/ect;->i:Lg/fsz;

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    new-instance v0, Lg/eoh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lg/eoh;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    new-instance v0, Lg/bxa;

    invoke-direct {v0, p0, p1}, Lg/bxa;-><init>(Lg/ect;Landroidx/recyclerview/widget/p;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :cond_0
    iget-object p2, p1, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

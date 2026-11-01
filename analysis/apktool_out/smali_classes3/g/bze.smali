.class public final Lg/bze;
.super Landroidx/recyclerview/widget/m;
.source "SourceFile"


# instance fields
.field public final a:Lg/cuz;

.field public b:Lg/atp;


# direct methods
.method public constructor <init>(Lg/cuz;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/m;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/bze;->b:Lg/atp;

    iput-object p1, p0, Lg/bze;->a:Lg/cuz;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 2

    iget-object v0, p0, Lg/bze;->b:Lg/atp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Lg/atp;->a:I

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lg/bze;->b:Lg/atp;

    if-eqz v0, :cond_1

    iget v1, v0, Lg/atp;->a:I

    if-nez v1, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lg/atp;->k(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lg/bze;->a:Lg/cuz;

    iget-boolean v2, v0, Lg/cuz;->u:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0, p1}, Lg/cuz;->ac(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    return p1

    :cond_2
    const/4 p1, 0x4

    return p1

    :cond_3
    invoke-virtual {v0, p1}, Lg/cuz;->ac(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    return p1

    :cond_4
    return v1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p;I)V
    .locals 3

    iget-object v0, p0, Lg/bze;->a:Lg/cuz;

    if-nez p2, :cond_0

    check-cast p1, Lg/pu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lg/pu;->al:Landroid/widget/TextView;

    const-string p2, ".."

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lg/bze;->getItemViewType(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, p1}, Lg/cuz;->ag(Landroidx/recyclerview/widget/p;)V

    return-void

    :cond_1
    add-int/lit8 p2, p2, -0x1

    check-cast p1, Lg/amu;

    iget-object v1, p0, Lg/bze;->b:Lg/atp;

    invoke-virtual {v1, p2}, Lg/atp;->k(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lg/cuz;->ab(Lg/amu;ILjava/lang/Object;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p;
    .locals 5

    iget-object v0, p0, Lg/bze;->a:Lg/cuz;

    const v1, 0x7f0c00b5

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    const/4 v3, 0x2

    if-eq p2, v3, :cond_3

    const/4 v3, 0x3

    if-eq p2, v3, :cond_2

    const/4 v3, 0x4

    const v4, 0x7f0c00b3

    if-eq p2, v3, :cond_1

    const/4 v3, 0x5

    if-eq p2, v3, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/u;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lg/amu;

    invoke-direct {p2, v0, p1}, Lg/amu;-><init>(Lg/cuz;Landroid/view/View;)V

    return-object p2

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/u;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lg/evr;

    invoke-direct {p2, v0, p1}, Lg/evr;-><init>(Lg/cuz;Landroid/view/View;)V

    return-object p2

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/u;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900bd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance p2, Lg/amu;

    invoke-direct {p2, v0, p1}, Lg/amu;-><init>(Lg/cuz;Landroid/view/View;)V

    return-object p2

    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/u;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00b2

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lg/bpq;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/u;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c00b4

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lg/evr;

    invoke-direct {p2, v0, p1}, Lg/evr;-><init>(Lg/cuz;Landroid/view/View;)V

    return-object p2

    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/u;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lg/pu;

    invoke-direct {p2, v0, p1}, Lg/pu;-><init>(Lg/cuz;Landroid/view/View;)V

    return-object p2
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/p;)V
    .locals 1

    iget-object v0, p0, Lg/bze;->a:Lg/cuz;

    invoke-virtual {v0, p1}, Lg/cuz;->aj(Landroidx/recyclerview/widget/p;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/m;->onViewRecycled(Landroidx/recyclerview/widget/p;)V

    return-void
.end method

.class public final Lg/bnj;
.super Lg/gfe;
.source "SourceFile"


# instance fields
.field public a:Lg/bjd;

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public final c:Lg/adp;

.field public d:Lg/bjd;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/adp;

    invoke-direct {v0, p0}, Lg/adp;-><init>(Lg/bnj;)V

    iput-object v0, p0, Lg/bnj;->c:Lg/adp;

    return-void
.end method

.method public static e(Landroid/view/View;Lg/bjd;)I
    .locals 1

    invoke-virtual {p1, p0}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p0}, Lg/bjd;->q(Landroid/view/View;)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    invoke-virtual {p1}, Lg/bjd;->p()I

    move-result v0

    invoke-virtual {p1}, Lg/bjd;->g()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    sub-int/2addr p0, p1

    return p0
.end method

.method public static f(Landroidx/recyclerview/widget/b;Lg/bjd;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lg/bjd;->p()I

    move-result v2

    invoke-virtual {p1}, Lg/bjd;->g()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    const v2, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p1, v5}, Lg/bjd;->q(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v2, :cond_1

    move-object v1, v5

    move v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final g(Landroidx/recyclerview/widget/b;)Lg/bjd;
    .locals 2

    iget-object v0, p0, Lg/bnj;->a:Lg/bjd;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    if-eq v0, p1, :cond_1

    :cond_0
    new-instance v0, Lg/bjd;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lg/bjd;-><init>(Landroidx/recyclerview/widget/b;I)V

    iput-object v0, p0, Lg/bnj;->a:Lg/bjd;

    :cond_1
    iget-object p1, p0, Lg/bnj;->a:Lg/bjd;

    return-object p1
.end method

.method public final h(Landroidx/recyclerview/widget/b;)Lg/bjd;
    .locals 2

    iget-object v0, p0, Lg/bnj;->d:Lg/bjd;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    if-eq v0, p1, :cond_1

    :cond_0
    new-instance v0, Lg/bjd;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lg/bjd;-><init>(Landroidx/recyclerview/widget/b;I)V

    iput-object v0, p0, Lg/bnj;->d:Lg/bjd;

    :cond_1
    iget-object p1, p0, Lg/bnj;->d:Lg/bjd;

    return-object p1
.end method

.method public final i(Landroidx/recyclerview/widget/b;Landroid/view/View;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/b;->ca()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lg/bnj;->g(Landroidx/recyclerview/widget/b;)Lg/bjd;

    move-result-object v1

    invoke-static {p2, v1}, Lg/bnj;->e(Landroid/view/View;Lg/bjd;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    :cond_0
    aput v2, v0, v2

    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/b;->cd()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lg/bnj;->h(Landroidx/recyclerview/widget/b;)Lg/bjd;

    move-result-object p1

    invoke-static {p2, p1}, Lg/bnj;->e(Landroid/view/View;Lg/bjd;)I

    move-result p1

    aput p1, v0, v3

    return-object v0

    :cond_1
    aput v2, v0, v3

    return-object v0
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Lg/bnj;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/b;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->cd()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lg/bnj;->h(Landroidx/recyclerview/widget/b;)Lg/bjd;

    move-result-object v1

    invoke-static {v0, v1}, Lg/bnj;->f(Landroidx/recyclerview/widget/b;Lg/bjd;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->ca()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lg/bnj;->g(Landroidx/recyclerview/widget/b;)Lg/bjd;

    move-result-object v1

    invoke-static {v0, v1}, Lg/bnj;->f(Landroidx/recyclerview/widget/b;Lg/bjd;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0, v1}, Lg/bnj;->i(Landroidx/recyclerview/widget/b;Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    if-nez v1, :cond_6

    aget v3, v0, v2

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    iget-object v3, p0, Lg/bnj;->b:Landroidx/recyclerview/widget/RecyclerView;

    aget v0, v0, v2

    invoke-virtual {v3, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    return-void
.end method

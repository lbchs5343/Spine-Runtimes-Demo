.class public Lg/fii;
.super Lg/ebs;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    check-cast p1, Lg/fqk;

    instance-of v0, p1, Lg/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lg/h;

    iget-object v0, p1, Lg/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_5

    if-ltz v1, :cond_1

    iget-object v2, p1, Lg/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p1, Lg/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fqk;

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0, v2, p2, p3}, Lg/fii;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lg/fqk;->as:Ljava/util/ArrayList;

    invoke-static {v0}, Lg/ebs;->r(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lg/fqk;->bb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p3, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_4

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lg/fqk;->j(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_4
    if-ltz p3, :cond_5

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lg/fqk;->m(Landroid/view/View;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public final b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1

    check-cast p1, Lg/fqk;

    new-instance v0, Lg/dps;

    invoke-direct {v0, p2, p3}, Lg/dps;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lg/fqk;->bi(Lg/to;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;Lg/ac;Lg/gfh;)V
    .locals 2

    check-cast p1, Lg/fqk;

    new-instance v0, Lg/ftr;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p3}, Lg/ftr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Lg/ac;->d(Lg/dad;)V

    new-instance p2, Lg/abt;

    invoke-direct {p2, p3}, Lg/abt;-><init>(Lg/gfh;)V

    invoke-virtual {p1, p2}, Lg/fqk;->bi(Lg/to;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    check-cast p1, Lg/fqk;

    new-instance p2, Lg/few;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Lg/fqk;->h(Lg/buj;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 6

    check-cast p1, Lg/fqk;

    new-instance v0, Lg/ekv;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lg/ekv;-><init>(Lg/fii;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lg/fqk;->bi(Lg/to;)V

    return-void
.end method

.method public final f(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lg/fqk;

    return p1
.end method

.method public final g(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lg/fqk;

    invoke-virtual {p2, p1}, Lg/fqk;->j(Landroid/view/View;)V

    return-void
.end method

.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    check-cast p1, Lg/fqk;

    invoke-virtual {p1}, Lg/fqk;->i()Lg/fqk;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final i(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    check-cast p1, Lg/h;

    iget-object v0, p1, Lg/fqk;->bb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v3, v0}, Lg/ebs;->s(Landroid/view/View;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p3}, Lg/fii;->l(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final j(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    check-cast p2, Lg/fqk;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, p1}, Lg/ebs;->t(Landroid/graphics/Rect;Landroid/view/View;)V

    new-instance p1, Lg/few;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, p1}, Lg/fqk;->h(Lg/buj;)V

    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lg/fqk;

    check-cast p2, Lg/fqk;

    check-cast p3, Lg/fqk;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lg/h;

    invoke-direct {v0}, Lg/h;-><init>()V

    invoke-virtual {v0, p1}, Lg/h;->_k(Lg/fqk;)V

    invoke-virtual {v0, p2}, Lg/h;->_k(Lg/fqk;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lg/h;->b:Z

    move-object p1, v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move-object p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_4

    new-instance p2, Lg/h;

    invoke-direct {p2}, Lg/h;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p2, p1}, Lg/h;->_k(Lg/fqk;)V

    :cond_3
    invoke-virtual {p2, p3}, Lg/h;->_k(Lg/fqk;)V

    return-object p2

    :cond_4
    return-object p1
.end method

.method public final l(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3

    check-cast p1, Lg/fqk;

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    instance-of v0, p1, Lg/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lg/h;

    iget-object v0, p1, Lg/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_4

    if-ltz v1, :cond_2

    iget-object v2, p1, Lg/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lg/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fqk;

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0, v2, p2}, Lg/fii;->l(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lg/fqk;->as:Ljava/util/ArrayList;

    invoke-static {v0}, Lg/ebs;->r(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lg/fqk;->bb:Ljava/util/ArrayList;

    invoke-static {v0}, Lg/ebs;->r(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lg/fqk;->j(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method

.method public final m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lg/h;

    invoke-direct {v0}, Lg/h;-><init>()V

    if-eqz p1, :cond_0

    check-cast p1, Lg/fqk;

    invoke-virtual {v0, p1}, Lg/h;->_k(Lg/fqk;)V

    :cond_0
    check-cast p2, Lg/fqk;

    invoke-virtual {v0, p2}, Lg/h;->_k(Lg/fqk;)V

    return-object v0
.end method

.method public final n(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    check-cast p1, Lg/h;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lg/fqk;->bb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1, p2, p3}, Lg/fii;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public final p(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lg/fqk;

    invoke-static {p1, p2}, Lg/atq;->d(Landroid/view/ViewGroup;Lg/fqk;)V

    return-void
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lg/h;

    invoke-direct {v0}, Lg/h;-><init>()V

    check-cast p1, Lg/fqk;

    invoke-virtual {v0, p1}, Lg/h;->_k(Lg/fqk;)V

    return-object v0
.end method

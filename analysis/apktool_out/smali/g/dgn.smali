.class public abstract Lg/dgn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:Lg/ggw;

.field public d:J

.field public e:Ljava/util/ArrayList;

.field public f:J


# direct methods
.method public static g(Landroidx/recyclerview/widget/p;)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/p;->f:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/p;->ac()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/p;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/p;)I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract h(Landroidx/recyclerview/widget/p;)V
.end method

.method public abstract i()V
.end method

.method public abstract j(Landroidx/recyclerview/widget/p;Landroidx/recyclerview/widget/p;Lg/geq;Lg/geq;)Z
.end method

.method public abstract k()Z
.end method

.method public final l(Landroidx/recyclerview/widget/p;)V
    .locals 4

    iget-object v0, p0, Lg/dgn;->c:Lg/ggw;

    if-eqz v0, :cond_2

    check-cast v0, Lg/evf;

    iget-object v0, v0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/p;->x(Z)V

    iget-object v1, p1, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    iget-object v2, p1, Landroidx/recyclerview/widget/p;->b:Landroidx/recyclerview/widget/p;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroidx/recyclerview/widget/p;->o:Landroidx/recyclerview/widget/p;

    if-nez v2, :cond_0

    iput-object v3, p1, Landroidx/recyclerview/widget/p;->b:Landroidx/recyclerview/widget/p;

    :cond_0
    iput-object v3, p1, Landroidx/recyclerview/widget/p;->o:Landroidx/recyclerview/widget/p;

    iget v2, p1, Landroidx/recyclerview/widget/p;->f:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->ah()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void
.end method

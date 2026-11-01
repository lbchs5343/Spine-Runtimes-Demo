.class public final Lg/ebj;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/ebb;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lg/ebb;II)V
    .locals 0

    iput-object p1, p0, Lg/ebj;->a:Lg/ebb;

    iput p3, p0, Lg/ebj;->b:I

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final cm(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    new-instance v0, Lg/god;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lg/god;-><init>(Landroid/content/Context;)V

    iput p2, v0, Landroidx/recyclerview/widget/i;->h:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b;->ep(Landroidx/recyclerview/widget/i;)V

    return-void
.end method

.method public final df(Lg/aqz;[I)V
    .locals 3

    iget p1, p0, Lg/ebj;->b:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lg/ebj;->a:Lg/ebb;

    if-nez p1, :cond_0

    iget-object p1, v2, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    aput p1, p2, v1

    iget-object p1, v2, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    aput p1, p2, v0

    return-void

    :cond_0
    iget-object p1, v2, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    aput p1, p2, v1

    iget-object p1, v2, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    aput p1, p2, v0

    return-void
.end method

.class public final Lg/anw;
.super Landroidx/recyclerview/widget/p;
.source "SourceFile"


# instance fields
.field public final ak:Lg/fnr;

.field public final al:Landroidx/recyclerview/widget/RecyclerView;

.field public final am:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;ILg/csm;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/p;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lg/anw;->al:Landroidx/recyclerview/widget/RecyclerView;

    iput p2, p0, Lg/anw;->am:I

    new-instance v0, Lg/fnr;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lg/fnr;-><init>(Landroid/content/Context;ILg/csm;)V

    iput-object v0, p0, Lg/anw;->ak:Lg/fnr;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m;)V

    new-instance p2, Lg/axc;

    const/4 p3, 0x2

    invoke-direct {p2, p3, p0}, Lg/axc;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public final an(I)V
    .locals 2

    if-lez p1, :cond_1

    iget v0, p0, Lg/anw;->am:I

    div-int/2addr p1, v0

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lg/anw;->ak:Lg/fnr;

    iget v1, v0, Lg/fnr;->b:I

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, v0, Lg/fnr;->b:I

    iget-object p1, v0, Lg/fnr;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/m;->notifyItemRangeChanged(II)V

    :cond_1
    :goto_0
    return-void
.end method

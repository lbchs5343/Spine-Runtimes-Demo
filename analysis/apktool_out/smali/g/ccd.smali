.class public final Lg/ccd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ekf;


# instance fields
.field public final c:Lg/efx;

.field public final d:I

.field public final e:Lg/csm;


# direct methods
.method public constructor <init>(Lg/efx;ILg/csm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ccd;->c:Lg/efx;

    iput p2, p0, Lg/ccd;->d:I

    iput-object p3, p0, Lg/ccd;->e:Lg/csm;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/p;
    .locals 2

    new-instance p1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lg/ccd;->c:Lg/efx;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lg/yx;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Lg/yx;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/b;)V

    new-instance p2, Lg/anw;

    iget v0, p0, Lg/ccd;->d:I

    iget-object v1, p0, Lg/ccd;->e:Lg/csm;

    invoke-direct {p2, p1, v0, v1}, Lg/anw;-><init>(Landroidx/recyclerview/widget/RecyclerView;ILg/csm;)V

    return-object p2
.end method

.method public final b(Landroidx/recyclerview/widget/p;Lg/cng;)V
    .locals 2

    check-cast p1, Lg/anw;

    check-cast p2, Lg/ajr;

    iget-object v0, p1, Lg/anw;->al:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Lg/ajr;->a:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Lg/anw;->an(I)V

    iget-object p1, p1, Lg/anw;->ak:Lg/fnr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lg/fnr;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/m;->notifyDataSetChanged()V

    return-void
.end method

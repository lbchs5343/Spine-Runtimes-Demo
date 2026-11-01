.class public final Lg/bxa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/p;

.field public final synthetic b:Lg/ect;


# direct methods
.method public constructor <init>(Lg/ect;Landroidx/recyclerview/widget/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bxa;->b:Lg/ect;

    iput-object p2, p0, Lg/bxa;->a:Landroidx/recyclerview/widget/p;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object p1, p0, Lg/bxa;->a:Landroidx/recyclerview/widget/p;

    iget-object v0, p1, Landroidx/recyclerview/widget/p;->j:Landroidx/recyclerview/widget/m;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/p;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p1, Landroidx/recyclerview/widget/p;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/p;)I

    move-result v2

    if-ne v2, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, p1, Landroidx/recyclerview/widget/p;->j:Landroidx/recyclerview/widget/m;

    invoke-virtual {v0, v3, p1, v2}, Landroidx/recyclerview/widget/m;->findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/m;Landroidx/recyclerview/widget/p;I)I

    move-result p1

    :goto_1
    if-eq p1, v1, :cond_4

    iget-object v0, p0, Lg/bxa;->b:Lg/ect;

    iget-object v0, v0, Lg/ect;->i:Lg/fsz;

    invoke-interface {v0, p1}, Lg/fsz;->g(I)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.class public abstract Lg/gox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/erj;
.implements Lg/us;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public ar:Landroid/graphics/Rect;


# direct methods
.method public static as(Landroid/widget/ListAdapter;Landroid/content/Context;I)I
    .locals 10

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move-object v7, v4

    move-object v8, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v0, v3, :cond_4

    invoke-interface {p0, v0}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v9

    if-eq v9, v6, :cond_0

    move-object v8, v4

    move v6, v9

    :cond_0
    if-nez v7, :cond_1

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    :cond_1
    invoke-interface {p0, v0, v8, v7}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-lt v9, p2, :cond_2

    return p2

    :cond_2
    if-le v9, v5, :cond_3

    move v5, v9

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v5
.end method


# virtual methods
.method public final a(Lg/far;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract ab(I)V
.end method

.method public abstract ac(I)V
.end method

.method public abstract ad(Landroid/view/View;)V
.end method

.method public abstract ae(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract af(Z)V
.end method

.method public abstract ag(Lg/ftn;)V
.end method

.method public abstract ah(Z)V
.end method

.method public abstract ai(I)V
.end method

.method public final f(Landroid/content/Context;Lg/ftn;)V
    .locals 0

    return-void
.end method

.method public final g(Lg/far;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ListAdapter;

    instance-of p2, p1, Landroid/widget/HeaderViewListAdapter;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Lg/hen;

    goto :goto_0

    :cond_0
    move-object p2, p1

    check-cast p2, Lg/hen;

    :goto_0
    iget-object p2, p2, Lg/hen;->c:Lg/ftn;

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    instance-of p3, p0, Lg/ezq;

    if-nez p3, :cond_1

    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    const/4 p3, 0x4

    :goto_1
    invoke-virtual {p2, p1, p0, p3}, Lg/ftn;->ar(Landroid/view/MenuItem;Lg/us;I)Z

    return-void
.end method

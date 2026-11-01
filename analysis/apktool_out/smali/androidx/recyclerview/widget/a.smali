.class public final Landroidx/recyclerview/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/awd;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()F
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/b;->cd()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    :goto_0
    neg-float v0, v0

    return v0

    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/b;->ca()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public c(F)Z
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/b;->cd()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    float-to-int p1, p1

    move v1, p1

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/b;->ca()Z

    move-result v1

    if-eqz v1, :cond_1

    float-to-int p1, p1

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    if-nez p1, :cond_2

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->flingNoThresholdCheck(II)Z

    move-result p1

    return p1
.end method

.method public d(Lg/rx;)V
    .locals 3

    iget v0, p1, Lg/rx;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/recyclerview/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/b;

    iget v1, p1, Lg/rx;->c:I

    iget p1, p1, Lg/rx;->a:I

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/b;->ag(II)V

    return-void

    :cond_1
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/b;

    iget v1, p1, Lg/rx;->c:I

    iget p1, p1, Lg/rx;->a:I

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/b;->u(II)V

    return-void

    :cond_2
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/b;

    iget v1, p1, Lg/rx;->c:I

    iget p1, p1, Lg/rx;->a:I

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/b;->y(II)V

    return-void

    :cond_3
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/b;

    iget v1, p1, Lg/rx;->c:I

    iget p1, p1, Lg/rx;->a:I

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/b;->bb(II)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    return-void
.end method

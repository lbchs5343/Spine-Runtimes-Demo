.class public final Lg/fzk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/ProgressBar;

.field public b:Z

.field public c:I

.field public d:Ljava/util/ArrayList;

.field public e:Landroidx/recyclerview/widget/RecyclerView;

.field public f:Lg/fcz;

.field public g:Landroid/view/View;

.field public h:Lg/ctx;

.field public i:Landroid/view/View;

.field public j:Lg/dbv;

.field public k:Landroidx/recyclerview/widget/RecyclerView;

.field public l:Lg/ctx;

.field public m:Landroid/widget/TextView;

.field public n:Lg/fzn;

.field public o:Landroid/widget/TextView;


# virtual methods
.method public final p(I)V
    .locals 1

    iget-boolean v0, p0, Lg/fzk;->b:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lg/fzk;->i:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lg/fzk;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

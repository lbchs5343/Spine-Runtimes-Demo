.class public final Lg/bcw;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lg/to;


# instance fields
.field public final h:Z

.field public i:Z

.field public final j:Landroid/view/View;

.field public k:Z

.field public final l:I

.field public final m:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(ILandroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/bcw;->k:Z

    iput-object p2, p0, Lg/bcw;->j:Landroid/view/View;

    iput p1, p0, Lg/bcw;->l:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lg/bcw;->m:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/bcw;->h:Z

    invoke-virtual {p0, p1}, Lg/bcw;->n(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lg/fqk;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/bcw;->n(Z)V

    iget-boolean v0, p0, Lg/bcw;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/bcw;->j:Landroid/view/View;

    iget v1, p0, Lg/bcw;->l:I

    invoke-static {v0, v1}, Lg/ebi;->d(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lg/bcw;->n(Z)V

    iget-boolean v0, p0, Lg/bcw;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/bcw;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lg/ebi;->d(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final d(Lg/fqk;)V
    .locals 0

    invoke-virtual {p1, p0}, Lg/fqk;->k(Lg/to;)Lg/fqk;

    return-void
.end method

.method public final e(Lg/fqk;)V
    .locals 0

    return-void
.end method

.method public final f(Lg/fqk;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final g(Lg/fqk;)V
    .locals 0

    invoke-virtual {p1, p0}, Lg/fqk;->k(Lg/to;)Lg/fqk;

    return-void
.end method

.method public final n(Z)V
    .locals 1

    iget-boolean v0, p0, Lg/bcw;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lg/bcw;->i:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lg/bcw;->m:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lg/bcw;->i:Z

    invoke-static {v0, p1}, Lg/egh;->m(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/bcw;->k:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lg/bcw;->k:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lg/bcw;->j:Landroid/view/View;

    iget v0, p0, Lg/bcw;->l:I

    invoke-static {p1, v0}, Lg/ebi;->d(Landroid/view/View;I)V

    iget-object p1, p0, Lg/bcw;->m:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lg/bcw;->n(Z)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    if-nez p2, :cond_1

    iget-boolean p1, p0, Lg/bcw;->k:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lg/bcw;->j:Landroid/view/View;

    iget p2, p0, Lg/bcw;->l:I

    invoke-static {p1, p2}, Lg/ebi;->d(Landroid/view/View;I)V

    iget-object p1, p0, Lg/bcw;->m:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lg/bcw;->n(Z)V

    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lg/bcw;->j:Landroid/view/View;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lg/ebi;->d(Landroid/view/View;I)V

    iget-object p1, p0, Lg/bcw;->m:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

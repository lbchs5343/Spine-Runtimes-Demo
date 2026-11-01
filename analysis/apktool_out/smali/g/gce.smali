.class public final Lg/gce;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lg/to;


# instance fields
.field public h:Z

.field public final synthetic i:Lg/ud;

.field public final j:Landroid/view/ViewGroup;

.field public final k:Landroid/view/View;

.field public final l:Landroid/view/View;


# direct methods
.method public constructor <init>(Lg/ud;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lg/gce;->i:Lg/ud;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/gce;->h:Z

    iput-object p2, p0, Lg/gce;->j:Landroid/view/ViewGroup;

    iput-object p3, p0, Lg/gce;->k:Landroid/view/View;

    iput-object p4, p0, Lg/gce;->l:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Lg/fqk;)V
    .locals 0

    iget-boolean p1, p0, Lg/gce;->h:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lg/gce;->m()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

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

.method public final m()V
    .locals 3

    const v0, 0x7f0902cf

    const/4 v1, 0x0

    iget-object v2, p0, Lg/gce;->l:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lg/gce;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lg/gce;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/gce;->h:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0}, Lg/gce;->m()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lg/gce;->m()V

    :cond_0
    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lg/gce;->j:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object v0, p0, Lg/gce;->k:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lg/gce;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/gce;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object p1, p0, Lg/gce;->i:Lg/ud;

    invoke-virtual {p1}, Lg/fqk;->cancel()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lg/gce;->l:Landroid/view/View;

    const p2, 0x7f0902cf

    iget-object v0, p0, Lg/gce;->k:Landroid/view/View;

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lg/gce;->j:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/gce;->h:Z

    :cond_0
    return-void
.end method

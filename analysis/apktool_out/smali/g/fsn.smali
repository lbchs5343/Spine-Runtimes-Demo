.class public final Lg/fsn;
.super Lg/gtg;
.source "SourceFile"

# interfaces
.implements Lg/egz;


# instance fields
.field public a:Lg/ftn;

.field public b:Z

.field public c:Landroid/content/Context;

.field public d:Landroidx/appcompat/widget/ActionBarContextView;

.field public e:Lg/clx;

.field public v:Ljava/lang/ref/WeakReference;


# virtual methods
.method public final _cj(Lg/ftn;)V
    .locals 0

    invoke-virtual {p0}, Lg/fsn;->u()V

    iget-object p1, p0, Lg/fsn;->d:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarContextView;->k:Lg/esf;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/esf;->ag()Z

    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lg/fsn;->d:Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->j:Z

    return v0
.end method

.method public final g(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lg/fsn;->d:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final h(Z)V
    .locals 1

    iput-boolean p1, p0, Lg/gtg;->x:Z

    iget-object v0, p0, Lg/fsn;->d:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public final i(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lg/fsn;->d:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final j()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Lg/cck;

    iget-object v1, p0, Lg/fsn;->d:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/cck;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final k(I)V
    .locals 1

    iget-object v0, p0, Lg/fsn;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/fsn;->i(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final l()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lg/fsn;->d:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final m()V
    .locals 1

    iget-boolean v0, p0, Lg/fsn;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/fsn;->b:Z

    iget-object v0, p0, Lg/fsn;->e:Lg/clx;

    invoke-virtual {v0, p0}, Lg/clx;->u(Lg/gtg;)V

    return-void
.end method

.method public final n()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lg/fsn;->d:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final o(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lg/fsn;->d:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lg/fsn;->v:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final p(Lg/ftn;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lg/fsn;->e:Lg/clx;

    iget-object p1, p1, Lg/clx;->e:Ljava/lang/Object;

    check-cast p1, Lg/dbn;

    invoke-interface {p1, p0, p2}, Lg/dbn;->q(Lg/gtg;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final r()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lg/fsn;->v:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final s(I)V
    .locals 1

    iget-object v0, p0, Lg/fsn;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/fsn;->g(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final t()Lg/ftn;
    .locals 1

    iget-object v0, p0, Lg/fsn;->a:Lg/ftn;

    return-object v0
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Lg/fsn;->e:Lg/clx;

    iget-object v1, p0, Lg/fsn;->a:Lg/ftn;

    invoke-virtual {v0, p0, v1}, Lg/clx;->m(Lg/gtg;Landroid/view/Menu;)Z

    return-void
.end method

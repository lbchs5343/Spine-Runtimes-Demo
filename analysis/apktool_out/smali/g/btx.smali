.class public final Lg/btx;
.super Lg/gtg;
.source "SourceFile"

# interfaces
.implements Lg/egz;


# instance fields
.field public final synthetic a:Lg/hp;

.field public final b:Landroid/content/Context;

.field public final c:Lg/ftn;

.field public d:Lg/clx;

.field public e:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lg/hp;Landroid/content/Context;Lg/clx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/btx;->a:Lg/hp;

    iput-object p2, p0, Lg/btx;->b:Landroid/content/Context;

    iput-object p3, p0, Lg/btx;->d:Lg/clx;

    new-instance p1, Lg/ftn;

    invoke-direct {p1, p2}, Lg/ftn;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    iput p2, p1, Lg/ftn;->g:I

    iput-object p1, p0, Lg/btx;->c:Lg/ftn;

    iput-object p0, p1, Lg/ftn;->h:Lg/egz;

    return-void
.end method


# virtual methods
.method public final _cj(Lg/ftn;)V
    .locals 0

    iget-object p1, p0, Lg/btx;->d:Lg/clx;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lg/btx;->u()V

    iget-object p1, p0, Lg/btx;->a:Lg/hp;

    iget-object p1, p1, Lg/hp;->n:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarContextView;->k:Lg/esf;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lg/esf;->ag()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lg/btx;->a:Lg/hp;

    iget-object v0, v0, Lg/hp;->n:Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->j:Z

    return v0
.end method

.method public final g(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lg/btx;->a:Lg/hp;

    iget-object v0, v0, Lg/hp;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final h(Z)V
    .locals 1

    iput-boolean p1, p0, Lg/gtg;->x:Z

    iget-object v0, p0, Lg/btx;->a:Lg/hp;

    iget-object v0, v0, Lg/hp;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public final i(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lg/btx;->a:Lg/hp;

    iget-object v0, v0, Lg/hp;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final j()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Lg/cck;

    iget-object v1, p0, Lg/btx;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lg/cck;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final k(I)V
    .locals 1

    iget-object v0, p0, Lg/btx;->a:Lg/hp;

    iget-object v0, v0, Lg/hp;->_ac:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/btx;->i(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final l()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lg/btx;->a:Lg/hp;

    iget-object v0, v0, Lg/hp;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final m()V
    .locals 4

    iget-object v0, p0, Lg/btx;->a:Lg/hp;

    iget-object v1, v0, Lg/hp;->r:Lg/btx;

    if-eq v1, p0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lg/hp;->p:Z

    if-eqz v1, :cond_1

    iput-object p0, v0, Lg/hp;->t:Lg/btx;

    iget-object v1, p0, Lg/btx;->d:Lg/clx;

    iput-object v1, v0, Lg/hp;->d:Lg/clx;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lg/btx;->d:Lg/clx;

    invoke-virtual {v1, p0}, Lg/clx;->u(Lg/gtg;)V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lg/btx;->d:Lg/clx;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lg/hp;->ap(Z)V

    iget-object v2, v0, Lg/hp;->n:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v3, v2, Landroidx/appcompat/widget/ActionBarContextView;->i:Landroid/view/View;

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->aa()V

    :cond_2
    iget-object v2, v0, Lg/hp;->w:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, v0, Lg/hp;->_ad:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iput-object v1, v0, Lg/hp;->r:Lg/btx;

    return-void
.end method

.method public final n()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lg/btx;->a:Lg/hp;

    iget-object v0, v0, Lg/hp;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final o(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lg/btx;->a:Lg/hp;

    iget-object v0, v0, Lg/hp;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lg/btx;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final p(Lg/ftn;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lg/btx;->d:Lg/clx;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lg/clx;->e:Ljava/lang/Object;

    check-cast p1, Lg/dbn;

    invoke-interface {p1, p0, p2}, Lg/dbn;->q(Lg/gtg;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final r()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lg/btx;->e:Ljava/lang/ref/WeakReference;

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

    iget-object v0, p0, Lg/btx;->a:Lg/hp;

    iget-object v0, v0, Lg/hp;->_ac:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/btx;->g(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final t()Lg/ftn;
    .locals 1

    iget-object v0, p0, Lg/btx;->c:Lg/ftn;

    return-object v0
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Lg/btx;->a:Lg/hp;

    iget-object v0, v0, Lg/hp;->r:Lg/btx;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/btx;->c:Lg/ftn;

    invoke-virtual {v0}, Lg/ftn;->aj()V

    :try_start_0
    iget-object v1, p0, Lg/btx;->d:Lg/clx;

    invoke-virtual {v1, p0, v0}, Lg/clx;->m(Lg/gtg;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lg/ftn;->ai()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lg/ftn;->ai()V

    throw v1
.end method

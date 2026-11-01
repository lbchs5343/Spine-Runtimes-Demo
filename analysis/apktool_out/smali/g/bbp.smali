.class public final Lg/bbp;
.super Lg/gkl;
.source "SourceFile"


# instance fields
.field public final a:Lg/dyn;

.field public b:Z

.field public c:Z

.field public final d:Lg/fxu;

.field public e:Z

.field public final f:Landroid/view/Window$Callback;

.field public final g:Lg/fc;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Lg/ecc;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/bbp;->h:Ljava/util/ArrayList;

    new-instance v0, Lg/dyn;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lg/dyn;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/bbp;->a:Lg/dyn;

    new-instance v0, Lg/aoy;

    invoke-direct {v0, p0}, Lg/aoy;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lg/fxu;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lg/fxu;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v1, p0, Lg/bbp;->d:Lg/fxu;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lg/bbp;->f:Landroid/view/Window$Callback;

    iput-object p3, v1, Lg/fxu;->b:Landroid/view/Window$Callback;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Lg/hax;)V

    iget-boolean p1, v1, Lg/fxu;->o:Z

    if-nez p1, :cond_0

    iput-object p2, v1, Lg/fxu;->a:Ljava/lang/CharSequence;

    iget p1, v1, Lg/fxu;->l:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, v1, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean p3, v1, Lg/fxu;->o:Z

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lg/goi;->r(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    new-instance p1, Lg/fc;

    const/16 p2, 0x12

    invoke-direct {p1, p2, p0}, Lg/fc;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg/bbp;->g:Lg/fc;

    return-void
.end method


# virtual methods
.method public final _ae()Z
    .locals 3

    iget-object v0, p0, Lg/bbp;->d:Lg/fxu;

    iget-object v1, v0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Lg/bbp;->a:Lg/dyn;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, v0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    sget-object v1, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final _af(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lg/bbp;->j()Z

    :cond_0
    return v0
.end method

.method public final aa(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lg/bbp;->d:Lg/fxu;

    invoke-virtual {v0, p1}, Lg/fxu;->r(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ab(Z)V
    .locals 0

    return-void
.end method

.method public final ac()I
    .locals 1

    iget-object v0, p0, Lg/bbp;->d:Lg/fxu;

    iget v0, v0, Lg/fxu;->l:I

    return v0
.end method

.method public final ad(Z)V
    .locals 0

    return-void
.end method

.method public final ae()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lg/bbp;->d:Lg/fxu;

    iget-object v0, v0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final ah(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lg/bbp;->d:Lg/fxu;

    iget-boolean v1, v0, Lg/fxu;->o:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    iput-object p1, v0, Lg/fxu;->a:Ljava/lang/CharSequence;

    iget v2, v0, Lg/fxu;->l:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v0, v0, Lg/fxu;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lg/goi;->r(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final ai(Z)V
    .locals 3

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lg/bbp;->d:Lg/fxu;

    iget v2, v1, Lg/fxu;->l:I

    and-int/2addr p1, v0

    and-int/lit8 v0, v2, -0x5

    or-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lg/fxu;->q(I)V

    return-void
.end method

.method public final aj(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lg/bbp;->n()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public final ak()Z
    .locals 2

    iget-object v0, p0, Lg/bbp;->d:Lg/fxu;

    iget-object v0, v0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->ak:Lg/glz;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lg/glz;->k:Lg/far;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lg/far;->collapseActionView()Z

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final an(Z)V
    .locals 1

    iget-boolean v0, p0, Lg/bbp;->e:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lg/bbp;->e:Z

    iget-object p1, p0, Lg/bbp;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lg/tn;->w(ILjava/util/ArrayList;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public final ao()V
    .locals 0

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lg/bbp;->d:Lg/fxu;

    iget-object v0, v0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lg/bbp;->a:Lg/dyn;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lg/bbp;->d:Lg/fxu;

    iget-object v0, v0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->bd()Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lg/bbp;->d:Lg/fxu;

    iget-object v0, v0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->ab:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->b:Lg/esf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/esf;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()Landroid/view/Menu;
    .locals 4

    iget-boolean v0, p0, Lg/bbp;->c:Z

    iget-object v1, p0, Lg/bbp;->d:Lg/fxu;

    if-nez v0, :cond_1

    new-instance v0, Lg/gez;

    const/4 v2, 0x7

    invoke-direct {v0, v2, p0}, Lg/gez;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lg/dcq;

    const/16 v3, 0x12

    invoke-direct {v2, v3, p0}, Lg/dcq;-><init>(ILjava/lang/Object;)V

    iget-object v3, v1, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    iput-object v0, v3, Landroidx/appcompat/widget/Toolbar;->an:Lg/gez;

    iput-object v2, v3, Landroidx/appcompat/widget/Toolbar;->n:Lg/dcq;

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->ab:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_0

    iput-object v0, v3, Landroidx/appcompat/widget/ActionMenuView;->g:Lg/gez;

    iput-object v2, v3, Landroidx/appcompat/widget/ActionMenuView;->f:Lg/egz;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/bbp;->c:Z

    :cond_1
    iget-object v0, v1, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

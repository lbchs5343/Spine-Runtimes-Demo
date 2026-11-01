.class public Lg/aoz;
.super Lg/btt;
.source "SourceFile"

# interfaces
.implements Lg/yv;


# instance fields
.field public a:Lg/dre;

.field public final b:Lg/bob;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;I)V
    .locals 4

    const/4 v0, 0x1

    const v1, 0x7f0401a6

    if-nez p2, :cond_0

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    invoke-direct {p0, p1, v2}, Lg/btt;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lg/bob;

    invoke-direct {v2, p0}, Lg/bob;-><init>(Lg/aoz;)V

    iput-object v2, p0, Lg/aoz;->b:Lg/bob;

    invoke-virtual {p0}, Lg/aoz;->d()Lg/dkn;

    move-result-object v2

    if-nez p2, :cond_1

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    :cond_1
    move-object p1, v2

    check-cast p1, Lg/dre;

    iput p2, p1, Lg/dre;->bt:I

    invoke-virtual {v2}, Lg/dkn;->w()V

    return-void
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-virtual {p0}, Lg/btt;->i()V

    invoke-virtual {p0}, Lg/aoz;->d()Lg/dkn;

    move-result-object v0

    check-cast v0, Lg/dre;

    invoke-virtual {v0}, Lg/dre;->ck()V

    iget-object v1, v0, Lg/dre;->bq:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, v0, Lg/dre;->bx:Lg/ecc;

    iget-object p2, v0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/ecc;->h(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final c(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final d()Lg/dkn;
    .locals 3

    iget-object v0, p0, Lg/aoz;->a:Lg/dre;

    if-nez v0, :cond_0

    sget-object v0, Lg/dkn;->f:Lg/aqv;

    new-instance v0, Lg/dre;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0, p0}, Lg/dre;-><init>(Landroid/content/Context;Landroid/view/Window;Lg/yv;Ljava/lang/Object;)V

    iput-object v0, p0, Lg/aoz;->a:Lg/dre;

    :cond_0
    iget-object v0, p0, Lg/aoz;->a:Lg/dre;

    return-object v0
.end method

.method public final dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p0}, Lg/aoz;->d()Lg/dkn;

    move-result-object v0

    invoke-virtual {v0}, Lg/dkn;->x()V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lg/aoz;->b:Lg/bob;

    invoke-static {v1, v0, p0, p1}, Lg/acr;->ag(Lg/ekw;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lg/aoz;->d()Lg/dkn;

    move-result-object v0

    check-cast v0, Lg/dre;

    invoke-virtual {v0}, Lg/dre;->ck()V

    iget-object v0, v0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Lg/aoz;->d()Lg/dkn;

    move-result-object v0

    invoke-virtual {v0}, Lg/dkn;->aa()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lg/aoz;->d()Lg/dkn;

    move-result-object v0

    check-cast v0, Lg/dre;

    iget-object v1, v0, Lg/dre;->aw:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    :goto_0
    invoke-super {p0, p1}, Lg/btt;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lg/aoz;->d()Lg/dkn;

    move-result-object p1

    invoke-virtual {p1}, Lg/dkn;->w()V

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Lg/btt;->onStop()V

    invoke-virtual {p0}, Lg/aoz;->d()Lg/dkn;

    move-result-object v0

    check-cast v0, Lg/dre;

    invoke-virtual {v0}, Lg/dre;->cj()V

    iget-object v0, v0, Lg/dre;->ao:Lg/gkl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/gkl;->ab(Z)V

    :cond_0
    return-void
.end method

.method public final onSupportActionModeFinished(Lg/gtg;)V
    .locals 0

    return-void
.end method

.method public final onSupportActionModeStarted(Lg/gtg;)V
    .locals 0

    return-void
.end method

.method public final onWindowStartingSupportActionMode(Lg/dbn;)Lg/gtg;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Lg/btt;->i()V

    invoke-virtual {p0}, Lg/aoz;->d()Lg/dkn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/dkn;->y(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lg/btt;->i()V

    invoke-virtual {p0}, Lg/aoz;->d()Lg/dkn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/dkn;->t(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lg/btt;->i()V

    invoke-virtual {p0}, Lg/aoz;->d()Lg/dkn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lg/dkn;->v(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    invoke-virtual {p0}, Lg/aoz;->d()Lg/dkn;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/dkn;->u(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lg/aoz;->d()Lg/dkn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/dkn;->u(Ljava/lang/CharSequence;)V

    return-void
.end method

.class public Lg/btt;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Lg/iz;
.implements Lg/eud;
.implements Lg/gff;


# instance fields
.field public final e:Landroidx/activity/b;

.field public f:Lg/ajs;

.field public final g:Lg/dyr;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lg/dyr;

    invoke-direct {p1, p0}, Lg/dyr;-><init>(Lg/gff;)V

    iput-object p1, p0, Lg/btt;->g:Lg/dyr;

    new-instance p1, Landroidx/activity/b;

    new-instance p2, Lg/fvi;

    const/16 v0, 0xa

    invoke-direct {p2, v0, p0}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, p2}, Landroidx/activity/b;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lg/btt;->e:Landroidx/activity/b;

    return-void
.end method

.method public static h(Lg/btt;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/btt;->i()V

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final getLifecycle()Lg/euu;
    .locals 1

    iget-object v0, p0, Lg/btt;->f:Lg/ajs;

    if-nez v0, :cond_0

    new-instance v0, Lg/ajs;

    invoke-direct {v0, p0}, Lg/ajs;-><init>(Lg/iz;)V

    iput-object v0, p0, Lg/btt;->f:Lg/ajs;

    :cond_0
    return-object v0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/b;
    .locals 1

    iget-object v0, p0, Lg/btt;->e:Landroidx/activity/b;

    return-object v0
.end method

.method public final getSavedStateRegistry()Lg/hbu;
    .locals 1

    iget-object v0, p0, Lg/btt;->g:Lg/dyr;

    iget-object v0, v0, Lg/dyr;->b:Lg/hbu;

    return-object v0
.end method

.method public final i()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window!!.decorView"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0903a4

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0903a5

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0903a6

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    iget-object v0, p0, Lg/btt;->e:Landroidx/activity/b;

    invoke-virtual {v0}, Landroidx/activity/b;->j()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lg/hce;->h(Lg/btt;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    const-string v1, "onBackInvokedDispatcher"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lg/btt;->e:Landroidx/activity/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v1, Landroidx/activity/b;->b:Landroid/window/OnBackInvokedDispatcher;

    iget-boolean v0, v1, Landroidx/activity/b;->g:Z

    invoke-virtual {v1, v0}, Landroidx/activity/b;->k(Z)V

    :cond_0
    iget-object v0, p0, Lg/btt;->g:Lg/dyr;

    invoke-virtual {v0, p1}, Lg/dyr;->e(Landroid/os/Bundle;)V

    iget-object p1, p0, Lg/btt;->f:Lg/ajs;

    if-nez p1, :cond_1

    new-instance p1, Lg/ajs;

    invoke-direct {p1, p0}, Lg/ajs;-><init>(Lg/iz;)V

    iput-object p1, p0, Lg/btt;->f:Lg/ajs;

    :cond_1
    sget-object v0, Lg/dtn;->ON_CREATE:Lg/dtn;

    invoke-virtual {p1, v0}, Lg/ajs;->k(Lg/dtn;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "super.onSaveInstanceState()"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lg/btt;->g:Lg/dyr;

    invoke-virtual {v1, v0}, Lg/dyr;->f(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Lg/btt;->f:Lg/ajs;

    if-nez v0, :cond_0

    new-instance v0, Lg/ajs;

    invoke-direct {v0, p0}, Lg/ajs;-><init>(Lg/iz;)V

    iput-object v0, p0, Lg/btt;->f:Lg/ajs;

    :cond_0
    sget-object v1, Lg/dtn;->ON_RESUME:Lg/dtn;

    invoke-virtual {v0, v1}, Lg/ajs;->k(Lg/dtn;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lg/btt;->f:Lg/ajs;

    if-nez v0, :cond_0

    new-instance v0, Lg/ajs;

    invoke-direct {v0, p0}, Lg/ajs;-><init>(Lg/iz;)V

    iput-object v0, p0, Lg/btt;->f:Lg/ajs;

    :cond_0
    sget-object v1, Lg/dtn;->ON_DESTROY:Lg/dtn;

    invoke-virtual {v0, v1}, Lg/ajs;->k(Lg/dtn;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/btt;->f:Lg/ajs;

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    invoke-virtual {p0}, Lg/btt;->i()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/btt;->i()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/btt;->i()V

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.class public final Lg/ecc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public final d:Landroid/view/Window$Callback;

.field public e:Lg/fc;

.field public final synthetic f:Lg/dre;


# direct methods
.method public constructor <init>(Lg/dre;Landroid/view/Window$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ecc;->f:Lg/dre;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Window callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lg/ecc;->b:Z

    iget-object v1, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lg/ecc;->f:Lg/dre;

    invoke-virtual {v0, p1}, Lg/dre;->cf(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v2, p0, Lg/ecc;->f:Lg/dre;

    invoke-virtual {v2}, Lg/dre;->cj()V

    iget-object v3, v2, Lg/dre;->ao:Lg/gkl;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0, p1}, Lg/gkl;->aj(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lg/dre;->bo:Lg/hbq;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v0, v3, p1}, Lg/dre;->ch(Lg/hbq;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, v2, Lg/dre;->bo:Lg/hbq;

    if-eqz p1, :cond_3

    iput-boolean v1, p1, Lg/hbq;->f:Z

    return v1

    :cond_1
    iget-object v0, v2, Lg/dre;->bo:Lg/hbq;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    invoke-virtual {v2, v3}, Lg/dre;->cv(I)Lg/hbq;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Lg/dre;->cn(Lg/hbq;Landroid/view/KeyEvent;)Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v2, v0, v4, p1}, Lg/dre;->ch(Lg/hbq;ILandroid/view/KeyEvent;)Z

    move-result p1

    iput-boolean v3, v0, Lg/hbq;->b:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final g(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 1

    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-static {v0, p1, p2, p3}, Lg/li;->a(Landroid/view/Window$Callback;Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public final h(Landroid/view/Window$Callback;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lg/ecc;->a:Z

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lg/ecc;->a:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lg/ecc;->a:Z

    throw p1
.end method

.method public final i(ILandroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final j(ILandroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    iget-boolean v0, p0, Lg/ecc;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    instance-of v0, p2, Lg/ftn;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lg/ecc;->e:Lg/fc;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance v1, Landroid/view/View;

    iget-object v0, v0, Lg/fc;->e:Ljava/lang/Object;

    check-cast v0, Lg/bbp;

    iget-object v0, v0, Lg/bbp;->d:Lg/fxu;

    iget-object v0, v0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lg/ecc;->i(ILandroid/view/Menu;)Z

    const/16 p2, 0x6c

    const/4 v0, 0x1

    iget-object v1, p0, Lg/ecc;->f:Lg/dre;

    if-ne p1, p2, :cond_0

    invoke-virtual {v1}, Lg/dre;->cj()V

    iget-object p1, v1, Lg/dre;->ao:Lg/gkl;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lg/gkl;->an(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return v0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    iget-boolean v0, p0, Lg/ecc;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lg/ecc;->j(ILandroid/view/Menu;)V

    const/16 p2, 0x6c

    iget-object v0, p0, Lg/ecc;->f:Lg/dre;

    const/4 v1, 0x0

    if-ne p1, p2, :cond_1

    invoke-virtual {v0}, Lg/dre;->cj()V

    iget-object p1, v0, Lg/dre;->ao:Lg/gkl;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lg/gkl;->an(Z)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v0, p1}, Lg/dre;->cv(I)Lg/hbq;

    move-result-object p1

    iget-boolean p2, p1, Lg/hbq;->k:Z

    if-eqz p2, :cond_2

    invoke-virtual {v0, p1, v1}, Lg/dre;->cy(Lg/hbq;Z)V

    :cond_2
    return-void
.end method

.method public final onPointerCaptureChanged(Z)V
    .locals 1

    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-static {v0, p1}, Lg/bjr;->a(Landroid/view/Window$Callback;Z)V

    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 5

    instance-of v0, p3, Lg/ftn;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lg/ftn;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iput-boolean v2, v0, Lg/ftn;->w:Z

    :cond_2
    iget-object v3, p0, Lg/ecc;->e:Lg/fc;

    if-eqz v3, :cond_3

    if-nez p1, :cond_3

    iget-object v3, v3, Lg/fc;->e:Ljava/lang/Object;

    check-cast v3, Lg/bbp;

    iget-boolean v4, v3, Lg/bbp;->b:Z

    if-nez v4, :cond_3

    iget-object v4, v3, Lg/bbp;->d:Lg/fxu;

    iput-boolean v2, v4, Lg/fxu;->f:Z

    iput-boolean v2, v3, Lg/bbp;->b:Z

    :cond_3
    iget-object v2, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-interface {v2, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_4

    iput-boolean v1, v0, Lg/ftn;->w:Z

    :cond_4
    return p1
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2

    iget-object v0, p0, Lg/ecc;->f:Lg/dre;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/dre;->cv(I)Lg/hbq;

    move-result-object v0

    iget-object v0, v0, Lg/hbq;->a:Lg/ftn;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0, p3}, Lg/ecc;->g(Ljava/util/List;Landroid/view/Menu;I)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lg/ecc;->g(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public final onSearchRequested()Z
    .locals 1

    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public final onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-static {v0, p1}, Lg/dmz;->a(Landroid/view/Window$Callback;Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public final onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    new-instance v0, Lg/gkr;

    iget-object v1, p0, Lg/ecc;->f:Lg/dre;

    iget-object v3, v1, Lg/dre;->aw:Landroid/content/Context;

    invoke-direct {v0, v3, p1}, Lg/gkr;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    invoke-virtual {v1, v0}, Lg/dre;->z(Lg/dbn;)Lg/gtg;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lg/gkr;->af(Lg/gtg;)Lg/dcz;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v2
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lg/ecc;->d:Landroid/view/Window$Callback;

    invoke-static {v0, p1, p2}, Lg/dmz;->b(Landroid/view/Window$Callback;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Lg/gkr;

    iget-object v0, p0, Lg/ecc;->f:Lg/dre;

    iget-object v1, v0, Lg/dre;->aw:Landroid/content/Context;

    invoke-direct {p2, v1, p1}, Lg/gkr;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    invoke-virtual {v0, p2}, Lg/dre;->z(Lg/dbn;)Lg/gtg;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, p1}, Lg/gkr;->af(Lg/gtg;)Lg/dcz;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

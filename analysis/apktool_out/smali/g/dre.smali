.class public final Lg/dre;
.super Lg/dkn;
.source "SourceFile"

# interfaces
.implements Lg/egz;
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field public static final ab:Z

.field public static final ac:[I

.field public static final ad:Lg/bcp;


# instance fields
.field public ae:I

.field public af:Z

.field public ag:Z

.field public ah:Lg/cck;

.field public ai:Lg/dcq;

.field public aj:I

.field public ak:[Lg/hbq;

.field public al:Lg/elx;

.field public am:Landroidx/appcompat/widget/ActionBarContextView;

.field public an:Lg/eh;

.field public ao:Lg/gkl;

.field public ap:Z

.field public aq:Z

.field public final ar:Ljava/lang/Object;

.field public as:Z

.field public at:Landroid/view/View;

.field public au:Landroid/view/Window;

.field public av:Z

.field public final aw:Landroid/content/Context;

.field public ax:Lg/gtg;

.field public ay:Z

.field public az:Lg/aoy;

.field public ba:Z

.field public bb:Z

.field public bc:Landroid/window/OnBackInvokedCallback;

.field public bd:I

.field public be:Lg/eaz;

.field public bf:Z

.field public bg:Z

.field public bh:Lg/gkx;

.field public bi:Z

.field public bj:Lg/gyl;

.field public bk:Landroid/widget/TextView;

.field public bl:Lg/eh;

.field public final bm:Ljava/lang/Object;

.field public bn:Landroid/widget/PopupWindow;

.field public bo:Lg/hbq;

.field public final bp:Lg/gkx;

.field public bq:Landroid/view/ViewGroup;

.field public br:Landroid/content/res/Configuration;

.field public bs:Z

.field public bt:I

.field public bu:Z

.field public bv:Z

.field public bw:Ljava/lang/CharSequence;

.field public bx:Lg/ecc;

.field public by:Landroid/graphics/Rect;

.field public bz:Landroid/window/OnBackInvokedDispatcher;

.field public ca:Z

.field public cb:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/bcp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/bcp;-><init>(I)V

    sput-object v0, Lg/dre;->ad:Lg/bcp;

    const v0, 0x1010054

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lg/dre;->ac:[I

    const-string v0, "robolectric"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lg/dre;->ab:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Lg/yv;Ljava/lang/Object;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/dre;->al:Lg/elx;

    const/16 v1, -0x64

    iput v1, p0, Lg/dre;->bd:I

    new-instance v2, Lg/gkx;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lg/gkx;-><init>(Lg/dre;I)V

    iput-object v2, p0, Lg/dre;->bp:Lg/gkx;

    iput-object p1, p0, Lg/dre;->aw:Landroid/content/Context;

    iput-object p3, p0, Lg/dre;->bm:Ljava/lang/Object;

    iput-object p4, p0, Lg/dre;->ar:Ljava/lang/Object;

    instance-of p3, p4, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    instance-of p3, p1, Lg/ub;

    if-eqz p3, :cond_0

    move-object v0, p1

    check-cast v0, Lg/ub;

    goto :goto_1

    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object p1

    check-cast p1, Lg/dre;

    iget p1, p1, Lg/dre;->bd:I

    iput p1, p0, Lg/dre;->bd:I

    :cond_2
    iget p1, p0, Lg/dre;->bd:I

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lg/dre;->ar:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lg/dre;->ad:Lg/bcp;

    invoke-virtual {p3, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lg/dre;->bd:I

    iget-object p1, p0, Lg/dre;->ar:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lg/bcp;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Lg/dre;->cu(Landroid/view/Window;)V

    :cond_4
    invoke-static {}, Lg/cfl;->d()V

    return-void
.end method

.method public static cc(Landroid/content/Context;ILg/azt;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    goto :goto_0

    :cond_1
    const/16 p0, 0x20

    goto :goto_0

    :cond_2
    const/16 p0, 0x10

    :goto_0
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    const/4 p4, 0x0

    iput p4, p1, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p3, :cond_3

    invoke-virtual {p1, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_3
    iget p3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p0, p3

    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz p2, :cond_5

    iget-object p0, p2, Lg/azt;->b:Lg/cmn;

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x18

    if-lt p3, p4, :cond_4

    invoke-static {p1, p2}, Lg/alx;->a(Landroid/content/res/Configuration;Lg/azt;)V

    return-object p1

    :cond_4
    invoke-interface {p0, v1}, Lg/cmn;->get(I)Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-interface {p0, v1}, Lg/cmn;->get(I)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    :cond_5
    return-object p1
.end method

.method public static cd(Landroid/content/Context;)Lg/azt;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lg/dkn;->c:Lg/azt;

    if-nez v1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v1, v1, Lg/azt;->b:Lg/cmn;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lg/dre;->ce(Landroid/content/res/Configuration;)Lg/azt;

    move-result-object p0

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-lt v0, v2, :cond_6

    invoke-interface {v1}, Lg/cmn;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lg/azt;->a:Lg/azt;

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_1
    invoke-interface {v1}, Lg/cmn;->size()I

    move-result v2

    iget-object v4, p0, Lg/azt;->b:Lg/cmn;

    invoke-interface {v4}, Lg/cmn;->size()I

    move-result v4

    add-int/2addr v4, v2

    if-ge v3, v4, :cond_5

    invoke-interface {v1}, Lg/cmn;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    invoke-interface {v1, v3}, Lg/cmn;->get(I)Ljava/util/Locale;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Lg/cmn;->size()I

    move-result v2

    sub-int v2, v3, v2

    iget-object v4, p0, Lg/azt;->b:Lg/cmn;

    invoke-interface {v4, v2}, Lg/cmn;->get(I)Ljava/util/Locale;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_4

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Locale;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale;

    invoke-static {v0}, Lg/azt;->c([Ljava/util/Locale;)Lg/azt;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-interface {v1}, Lg/cmn;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lg/azt;->a:Lg/azt;

    goto :goto_3

    :cond_7
    invoke-interface {v1, v3}, Lg/cmn;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lg/cek;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/azt;->d(Ljava/lang/String;)Lg/azt;

    move-result-object v0

    :goto_3
    iget-object v1, v0, Lg/azt;->b:Lg/cmn;

    invoke-interface {v1}, Lg/cmn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    return-object p0

    :cond_8
    return-object v0
.end method

.method public static ce(Landroid/content/res/Configuration;)Lg/azt;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lg/alx;->c(Landroid/content/res/Configuration;)Lg/azt;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p0}, Lg/cek;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lg/azt;->d(Ljava/lang/String;)Lg/azt;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final _cj(Lg/ftn;)V
    .locals 5

    iget-object p1, p0, Lg/dre;->be:Lg/eaz;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ah()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Lg/fps;

    check-cast p1, Lg/fxu;

    iget-object p1, p1, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->ab:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_5

    iget-boolean p1, p1, Landroidx/appcompat/widget/ActionMenuView;->h:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lg/dre;->aw:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/dre;->be:Lg/eaz;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ah()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Lg/fps;

    check-cast p1, Lg/fxu;

    iget-object p1, p1, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->ab:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_5

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->b:Lg/esf;

    if-eqz p1, :cond_5

    iget-object v2, p1, Lg/esf;->s:Lg/gfh;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lg/esf;->af()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_0
    iget-object p1, p0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, Lg/dre;->be:Lg/eaz;

    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ah()V

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Lg/fps;

    check-cast v2, Lg/fxu;

    iget-object v2, v2, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->ay()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_2

    iget-object v0, p0, Lg/dre;->be:Lg/eaz;

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ah()V

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Lg/fps;

    check-cast v0, Lg/fxu;

    iget-object v0, v0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->ab:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->b:Lg/esf;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/esf;->ah()Z

    move-result v0

    :cond_1
    iget-boolean v0, p0, Lg/dre;->af:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lg/dre;->cv(I)Lg/hbq;

    move-result-object v0

    iget-object v0, v0, Lg/hbq;->a:Lg/ftn;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :cond_2
    if-eqz p1, :cond_4

    iget-boolean v2, p0, Lg/dre;->af:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lg/dre;->bu:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lg/dre;->ae:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lg/dre;->bp:Lg/gkx;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v2}, Lg/gkx;->run()V

    :cond_3
    invoke-virtual {p0, v1}, Lg/dre;->cv(I)Lg/hbq;

    move-result-object v0

    iget-object v2, v0, Lg/hbq;->a:Lg/ftn;

    if-eqz v2, :cond_4

    iget-boolean v4, v0, Lg/hbq;->c:Z

    if-nez v4, :cond_4

    iget-object v4, v0, Lg/hbq;->p:Landroid/view/View;

    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lg/hbq;->a:Lg/ftn;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p1, p0, Lg/dre;->be:Lg/eaz;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ah()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Lg/fps;

    check-cast p1, Lg/fxu;

    iget-object p1, p1, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->bd()Z

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0, v1}, Lg/dre;->cv(I)Lg/hbq;

    move-result-object p1

    iput-boolean v0, p1, Lg/hbq;->d:Z

    invoke-virtual {p0, p1, v1}, Lg/dre;->cy(Lg/hbq;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg/dre;->co(Lg/hbq;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public final aa()V
    .locals 1

    iget-object v0, p0, Lg/dre;->ao:Lg/gkl;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lg/dre;->cj()V

    iget-object v0, p0, Lg/dre;->ao:Lg/gkl;

    invoke-virtual {v0}, Lg/gkl;->_ae()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/dre;->cg(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final cf(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Lg/dre;->ar:Ljava/lang/Object;

    instance-of v1, v0, Lg/ekw;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    instance-of v0, v0, Lg/aoz;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lg/acr;->am(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v3, 0x52

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lg/dre;->bx:Lg/ecc;

    iget-object v4, p0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iput-boolean v2, v0, Lg/ecc;->b:Z

    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, v0, Lg/ecc;->b:Z

    if-eqz v4, :cond_2

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    iput-boolean v1, v0, Lg/ecc;->b:Z

    throw p1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x4

    if-nez v4, :cond_6

    if-eq v0, v5, :cond_4

    if-eq v0, v3, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0, v1}, Lg/dre;->cv(I)Lg/hbq;

    move-result-object v0

    iget-boolean v1, v0, Lg/hbq;->k:Z

    if-nez v1, :cond_10

    invoke-virtual {p0, v0, p1}, Lg/dre;->cn(Lg/hbq;Landroid/view/KeyEvent;)Z

    return v2

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lg/dre;->bs:Z

    return v1

    :cond_6
    if-eq v0, v5, :cond_f

    if-eq v0, v3, :cond_7

    goto/16 :goto_6

    :cond_7
    iget-object v0, p0, Lg/dre;->ax:Lg/gtg;

    if-eqz v0, :cond_8

    goto/16 :goto_5

    :cond_8
    invoke-virtual {p0, v1}, Lg/dre;->cv(I)Lg/hbq;

    move-result-object v0

    iget-object v3, p0, Lg/dre;->be:Lg/eaz;

    iget-object v4, p0, Lg/dre;->aw:Landroid/content/Context;

    if-eqz v3, :cond_a

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ah()V

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Lg/fps;

    check-cast v3, Lg/fxu;

    iget-object v3, v3, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_a

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->ab:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_a

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView;->h:Z

    if-eqz v3, :cond_a

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lg/dre;->be:Lg/eaz;

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ah()V

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Lg/fps;

    check-cast v3, Lg/fxu;

    iget-object v3, v3, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->ay()Z

    move-result v3

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lg/dre;->af:Z

    if-nez v3, :cond_d

    invoke-virtual {p0, v0, p1}, Lg/dre;->cn(Lg/hbq;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lg/dre;->be:Lg/eaz;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ah()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Lg/fps;

    check-cast p1, Lg/fxu;

    iget-object p1, p1, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->bd()Z

    move-result p1

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lg/dre;->be:Lg/eaz;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ah()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Lg/fps;

    check-cast p1, Lg/fxu;

    iget-object p1, p1, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->ab:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_d

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->b:Lg/esf;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lg/esf;->ah()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_2

    :cond_a
    iget-boolean v3, v0, Lg/hbq;->k:Z

    if-nez v3, :cond_e

    iget-boolean v5, v0, Lg/hbq;->f:Z

    if-eqz v5, :cond_b

    goto :goto_3

    :cond_b
    iget-boolean v3, v0, Lg/hbq;->b:Z

    if-eqz v3, :cond_d

    iget-boolean v3, v0, Lg/hbq;->c:Z

    if-eqz v3, :cond_c

    iput-boolean v1, v0, Lg/hbq;->b:Z

    invoke-virtual {p0, v0, p1}, Lg/dre;->cn(Lg/hbq;Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1

    :cond_c
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_d

    invoke-virtual {p0, v0, p1}, Lg/dre;->co(Lg/hbq;Landroid/view/KeyEvent;)V

    :goto_2
    const/4 p1, 0x1

    goto :goto_4

    :cond_d
    const/4 p1, 0x0

    goto :goto_4

    :cond_e
    :goto_3
    invoke-virtual {p0, v0, v2}, Lg/dre;->cy(Lg/hbq;Z)V

    move p1, v3

    :goto_4
    if-eqz p1, :cond_10

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return v2

    :cond_f
    invoke-virtual {p0}, Lg/dre;->cr()Z

    move-result p1

    if-eqz p1, :cond_11

    :cond_10
    :goto_5
    return v2

    :cond_11
    :goto_6
    return v1
.end method

.method public final cg(I)V
    .locals 2

    iget v0, p0, Lg/dre;->ae:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lg/dre;->ae:I

    iget-boolean p1, p0, Lg/dre;->bu:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget-object v0, Lg/goi;->c:Ljava/util/WeakHashMap;

    iget-object v0, p0, Lg/dre;->bp:Lg/gkx;

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lg/dre;->bu:Z

    :cond_0
    return-void
.end method

.method public final ch(Lg/hbq;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lg/hbq;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lg/dre;->cn(Lg/hbq;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p1, p1, Lg/hbq;->a:Lg/ftn;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lg/ftn;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final ci()V
    .locals 2

    iget-boolean v0, p0, Lg/dre;->bg:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final cj()V
    .locals 3

    invoke-virtual {p0}, Lg/dre;->ck()V

    iget-boolean v0, p0, Lg/dre;->ay:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg/dre;->ao:Lg/gkl;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lg/dre;->ar:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v1, Lg/hp;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Lg/dre;->ca:Z

    invoke-direct {v1, v2, v0}, Lg/hp;-><init>(ZLandroid/app/Activity;)V

    iput-object v1, p0, Lg/dre;->ao:Lg/gkl;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/app/Dialog;

    if-eqz v1, :cond_2

    new-instance v1, Lg/hp;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Lg/hp;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Lg/dre;->ao:Lg/gkl;

    :cond_2
    :goto_0
    iget-object v0, p0, Lg/dre;->ao:Lg/gkl;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lg/dre;->ba:Z

    invoke-virtual {v0, v1}, Lg/gkl;->ad(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final ck()V
    .locals 12

    iget-boolean v0, p0, Lg/dre;->bg:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lg/dre;->aw:Landroid/content/Context;

    sget-object v1, Lg/acs;->t:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v3, 0x75

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/16 v4, 0x7e

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/16 v6, 0x6c

    const/4 v7, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {p0, v7}, Lg/dre;->s(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v6}, Lg/dre;->s(I)Z

    :cond_1
    :goto_0
    const/16 v3, 0x76

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/16 v4, 0x6d

    if-eqz v3, :cond_2

    invoke-virtual {p0, v4}, Lg/dre;->s(I)Z

    :cond_2
    const/16 v3, 0x77

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lg/dre;->s(I)Z

    :cond_3
    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lg/dre;->bf:Z

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lg/dre;->cm()V

    iget-object v2, p0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-boolean v3, p0, Lg/dre;->av:Z

    const/4 v8, 0x0

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lg/dre;->bf:Z

    if-eqz v3, :cond_4

    const v3, 0x7f0c000c

    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-boolean v5, p0, Lg/dre;->ca:Z

    iput-boolean v5, p0, Lg/dre;->ay:Z

    goto/16 :goto_2

    :cond_4
    iget-boolean v2, p0, Lg/dre;->ay:Z

    if-eqz v2, :cond_8

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v9, 0x7f04000b

    invoke-virtual {v3, v9, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_5

    new-instance v3, Lg/gzy;

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v3, v0, v2}, Lg/gzy;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    move-object v3, v0

    :goto_1
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0017

    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f09011a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lg/eaz;

    iput-object v3, p0, Lg/dre;->be:Lg/eaz;

    iget-object v9, p0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v9

    invoke-interface {v3, v9}, Lg/eaz;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v3, p0, Lg/dre;->ca:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lg/dre;->be:Lg/eaz;

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ap(I)V

    :cond_6
    iget-boolean v3, p0, Lg/dre;->aq:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lg/dre;->be:Lg/eaz;

    const/4 v4, 0x2

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ap(I)V

    :cond_7
    iget-boolean v3, p0, Lg/dre;->bb:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lg/dre;->be:Lg/eaz;

    const/4 v4, 0x5

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ap(I)V

    goto :goto_2

    :cond_8
    move-object v2, v8

    goto :goto_2

    :cond_9
    iget-boolean v3, p0, Lg/dre;->bv:Z

    if-eqz v3, :cond_a

    const v3, 0x7f0c0016

    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_a
    const v3, 0x7f0c0015

    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    :cond_b
    :goto_2
    if-eqz v2, :cond_19

    new-instance v3, Lg/emr;

    const/4 v4, 0x3

    invoke-direct {v3, v4, p0}, Lg/emr;-><init>(ILjava/lang/Object;)V

    sget-object v9, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-static {v2, v3}, Lg/cd;->b(Landroid/view/View;Lg/ghx;)V

    iget-object v3, p0, Lg/dre;->be:Lg/eaz;

    if-nez v3, :cond_c

    const v3, 0x7f090359

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lg/dre;->bk:Landroid/widget/TextView;

    :cond_c
    sget-boolean v3, Lg/dnh;->a:Z

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v9, "makeOptionalFitsSystemWindows"

    invoke-virtual {v3, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v3, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_3

    :catch_0
    nop

    goto :goto_4

    :cond_d
    :goto_3
    invoke-virtual {v3, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    const v3, 0x7f090046

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v9, p0, Lg/dre;->au:Landroid/view/Window;

    const v10, 0x1020002

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    if-eqz v9, :cond_f

    :goto_5
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-lez v11, :cond_e

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_e
    const/4 v11, -0x1

    invoke-virtual {v9, v11}, Landroid/view/View;->setId(I)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setId(I)V

    instance-of v11, v9, Landroid/widget/FrameLayout;

    if-eqz v11, :cond_f

    check-cast v9, Landroid/widget/FrameLayout;

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    iget-object v8, p0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {v8, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v8, Lg/fnq;

    invoke-direct {v8, v4, p0}, Lg/fnq;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v8}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Lg/byf;)V

    iput-object v2, p0, Lg/dre;->bq:Landroid/view/ViewGroup;

    iget-object v2, p0, Lg/dre;->ar:Ljava/lang/Object;

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_10

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_6

    :cond_10
    iget-object v2, p0, Lg/dre;->bw:Ljava/lang/CharSequence;

    :goto_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, p0, Lg/dre;->be:Lg/eaz;

    if-eqz v3, :cond_11

    invoke-interface {v3, v2}, Lg/eaz;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_11
    iget-object v3, p0, Lg/dre;->ao:Lg/gkl;

    if-eqz v3, :cond_12

    invoke-virtual {v3, v2}, Lg/gkl;->ah(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_12
    iget-object v3, p0, Lg/dre;->bk:Landroid/widget/TextView;

    if-eqz v3, :cond_13

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_7
    iget-object v2, p0, Lg/dre;->bq:Landroid/view/ViewGroup;

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v3, p0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    iget-object v10, v2, Landroidx/appcompat/widget/ContentFrameLayout;->b:Landroid/graphics/Rect;

    invoke-virtual {v10, v4, v8, v9, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->isLaidOut()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_14
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x7c

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v1, 0x7d

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_15
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_16
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_18
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    iput-boolean v7, p0, Lg/dre;->bg:Z

    invoke-virtual {p0, v5}, Lg/dre;->cv(I)Lg/hbq;

    move-result-object v0

    iget-boolean v1, p0, Lg/dre;->af:Z

    if-nez v1, :cond_1b

    iget-object v0, v0, Lg/hbq;->a:Lg/ftn;

    if-nez v0, :cond_1b

    invoke-virtual {p0, v6}, Lg/dre;->cg(I)V

    goto :goto_8

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lg/dre;->ay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lg/dre;->ca:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lg/dre;->bf:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lg/dre;->bv:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lg/dre;->av:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_8
    return-void
.end method

.method public final cl(Landroid/content/Context;)Lg/cgo;
    .locals 3

    iget-object v0, p0, Lg/dre;->an:Lg/eh;

    if-nez v0, :cond_1

    new-instance v0, Lg/eh;

    sget-object v1, Lg/dzh;->a:Lg/dzh;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lg/dzh;

    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1, p1, v2}, Lg/dzh;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, Lg/dzh;->a:Lg/dzh;

    :cond_0
    sget-object p1, Lg/dzh;->a:Lg/dzh;

    invoke-direct {v0, p0, p1}, Lg/eh;-><init>(Lg/dre;Lg/dzh;)V

    iput-object v0, p0, Lg/dre;->an:Lg/eh;

    :cond_1
    iget-object p1, p0, Lg/dre;->an:Lg/eh;

    return-object p1
.end method

.method public final cm()V
    .locals 2

    iget-object v0, p0, Lg/dre;->au:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/dre;->ar:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/dre;->cu(Landroid/view/Window;)V

    :cond_0
    iget-object v0, p0, Lg/dre;->au:Landroid/view/Window;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final cn(Lg/hbq;Landroid/view/KeyEvent;)Z
    .locals 12

    iget-boolean v0, p0, Lg/dre;->af:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v0, p1, Lg/hbq;->b:Z

    iget v2, p1, Lg/hbq;->h:I

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lg/dre;->bo:Lg/hbq;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, Lg/dre;->cy(Lg/hbq;Z)V

    :cond_2
    iget-object v0, p0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Lg/hbq;->p:Landroid/view/View;

    :cond_3
    const/16 v4, 0x6c

    if-eqz v2, :cond_5

    if-ne v2, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_6

    iget-object v6, p0, Lg/dre;->be:Lg/eaz;

    if-eqz v6, :cond_6

    check-cast v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ah()V

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Lg/fps;

    check-cast v6, Lg/fxu;

    iput-boolean v3, v6, Lg/fxu;->f:Z

    :cond_6
    iget-object v6, p1, Lg/hbq;->p:Landroid/view/View;

    if-nez v6, :cond_1e

    if-eqz v5, :cond_7

    iget-object v6, p0, Lg/dre;->ao:Lg/gkl;

    instance-of v6, v6, Lg/bbp;

    if-nez v6, :cond_1e

    :cond_7
    iget-object v6, p1, Lg/hbq;->a:Lg/ftn;

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    iget-boolean v8, p1, Lg/hbq;->c:Z

    if-eqz v8, :cond_18

    :cond_8
    if-nez v6, :cond_11

    iget-object v6, p0, Lg/dre;->aw:Landroid/content/Context;

    if-eqz v2, :cond_9

    if-ne v2, v4, :cond_d

    :cond_9
    iget-object v4, p0, Lg/dre;->be:Lg/eaz;

    if-eqz v4, :cond_d

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x7f04000b

    invoke-virtual {v8, v9, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    const v10, 0x7f04000c

    if-eqz v9, :cond_a

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v11, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v11, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-virtual {v9, v10, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    :cond_a
    invoke-virtual {v8, v10, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v9, v7

    :goto_2
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_c

    if-nez v9, :cond_b

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_b
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v4, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_c
    if-eqz v9, :cond_d

    new-instance v4, Lg/gzy;

    invoke-direct {v4, v6, v1}, Lg/gzy;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lg/gzy;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v6, v4

    :cond_d
    new-instance v4, Lg/ftn;

    invoke-direct {v4, v6}, Lg/ftn;-><init>(Landroid/content/Context;)V

    iput-object p0, v4, Lg/ftn;->h:Lg/egz;

    iget-object v6, p1, Lg/hbq;->a:Lg/ftn;

    if-ne v4, v6, :cond_e

    goto :goto_3

    :cond_e
    if-eqz v6, :cond_f

    iget-object v8, p1, Lg/hbq;->l:Lg/cuk;

    invoke-virtual {v6, v8}, Lg/ftn;->av(Lg/us;)V

    :cond_f
    iput-object v4, p1, Lg/hbq;->a:Lg/ftn;

    iget-object v6, p1, Lg/hbq;->l:Lg/cuk;

    if-eqz v6, :cond_10

    iget-object v8, v4, Lg/ftn;->i:Landroid/content/Context;

    invoke-virtual {v4, v6, v8}, Lg/ftn;->ap(Lg/us;Landroid/content/Context;)V

    :cond_10
    :goto_3
    iget-object v4, p1, Lg/hbq;->a:Lg/ftn;

    if-nez v4, :cond_11

    goto :goto_5

    :cond_11
    if-eqz v5, :cond_13

    iget-object v4, p0, Lg/dre;->be:Lg/eaz;

    if-eqz v4, :cond_13

    iget-object v6, p0, Lg/dre;->az:Lg/aoy;

    if-nez v6, :cond_12

    new-instance v6, Lg/aoy;

    invoke-direct {v6, p0}, Lg/aoy;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lg/dre;->az:Lg/aoy;

    :cond_12
    iget-object v6, p1, Lg/hbq;->a:Lg/ftn;

    iget-object v8, p0, Lg/dre;->az:Lg/aoy;

    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v4, v6, v8}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->aj(Landroid/view/Menu;Lg/caf;)V

    :cond_13
    iget-object v4, p1, Lg/hbq;->a:Lg/ftn;

    invoke-virtual {v4}, Lg/ftn;->aj()V

    iget-object v4, p1, Lg/hbq;->a:Lg/ftn;

    invoke-interface {v0, v2, v4}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object p2, p1, Lg/hbq;->a:Lg/ftn;

    if-nez p2, :cond_14

    goto :goto_4

    :cond_14
    if-eqz p2, :cond_15

    iget-object v0, p1, Lg/hbq;->l:Lg/cuk;

    invoke-virtual {p2, v0}, Lg/ftn;->av(Lg/us;)V

    :cond_15
    iput-object v7, p1, Lg/hbq;->a:Lg/ftn;

    :goto_4
    if-eqz v5, :cond_16

    iget-object p1, p0, Lg/dre;->be:Lg/eaz;

    if-eqz p1, :cond_16

    iget-object p2, p0, Lg/dre;->az:Lg/aoy;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1, v7, p2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->aj(Landroid/view/Menu;Lg/caf;)V

    :cond_16
    :goto_5
    return v1

    :cond_17
    iput-boolean v1, p1, Lg/hbq;->c:Z

    :cond_18
    iget-object v2, p1, Lg/hbq;->a:Lg/ftn;

    invoke-virtual {v2}, Lg/ftn;->aj()V

    iget-object v2, p1, Lg/hbq;->j:Landroid/os/Bundle;

    if-eqz v2, :cond_19

    iget-object v4, p1, Lg/hbq;->a:Lg/ftn;

    invoke-virtual {v4, v2}, Lg/ftn;->al(Landroid/os/Bundle;)V

    iput-object v7, p1, Lg/hbq;->j:Landroid/os/Bundle;

    :cond_19
    iget-object v2, p1, Lg/hbq;->p:Landroid/view/View;

    iget-object v4, p1, Lg/hbq;->a:Lg/ftn;

    invoke-interface {v0, v1, v2, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-eqz v5, :cond_1a

    iget-object p2, p0, Lg/dre;->be:Lg/eaz;

    if-eqz p2, :cond_1a

    iget-object v0, p0, Lg/dre;->az:Lg/aoy;

    check-cast p2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p2, v7, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->aj(Landroid/view/Menu;Lg/caf;)V

    :cond_1a
    iget-object p1, p1, Lg/hbq;->a:Lg/ftn;

    invoke-virtual {p1}, Lg/ftn;->ai()V

    return v1

    :cond_1b
    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_6

    :cond_1c
    const/4 p2, -0x1

    :goto_6
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v3, :cond_1d

    const/4 p2, 0x1

    goto :goto_7

    :cond_1d
    const/4 p2, 0x0

    :goto_7
    iget-object v0, p1, Lg/hbq;->a:Lg/ftn;

    invoke-virtual {v0, p2}, Lg/ftn;->setQwertyMode(Z)V

    iget-object p2, p1, Lg/hbq;->a:Lg/ftn;

    invoke-virtual {p2}, Lg/ftn;->ai()V

    :cond_1e
    iput-boolean v3, p1, Lg/hbq;->b:Z

    iput-boolean v1, p1, Lg/hbq;->f:Z

    iput-object p1, p0, Lg/dre;->bo:Lg/hbq;

    return v3
.end method

.method public final co(Lg/hbq;Landroid/view/KeyEvent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lg/hbq;->k:Z

    iget v3, v1, Lg/hbq;->h:I

    if-nez v2, :cond_1a

    iget-boolean v2, v0, Lg/dre;->af:Z

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v2, v0, Lg/dre;->aw:Landroid/content/Context;

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v4, v0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v6, v1, Lg/hbq;->a:Lg/ftn;

    invoke-interface {v4, v3, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v1, v5}, Lg/dre;->cy(Lg/hbq;Z)V

    return-void

    :cond_2
    const-string v4, "window"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    if-nez v4, :cond_3

    goto/16 :goto_9

    :cond_3
    invoke-virtual/range {p0 .. p2}, Lg/dre;->cn(Lg/hbq;Landroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_9

    :cond_4
    iget-object v6, v1, Lg/hbq;->g:Lg/bvz;

    const/4 v7, 0x0

    const/4 v8, -0x2

    if-eqz v6, :cond_6

    iget-boolean v9, v1, Lg/hbq;->d:Z

    if-eqz v9, :cond_5

    goto :goto_0

    :cond_5
    iget-object v2, v1, Lg/hbq;->p:Landroid/view/View;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_18

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_18

    const/4 v10, -0x1

    goto/16 :goto_7

    :cond_6
    :goto_0
    if-nez v6, :cond_b

    invoke-virtual {v0}, Lg/dre;->cj()V

    iget-object v6, v0, Lg/dre;->ao:Lg/gkl;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lg/gkl;->ae()Landroid/content/Context;

    move-result-object v6

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    move-object v2, v6

    :goto_2
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    const v10, 0x7f040004

    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v10, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_9

    invoke-virtual {v9, v10, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_9
    const v10, 0x7f0403ec

    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_a

    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_3

    :cond_a
    const v6, 0x7f1302c7

    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_3
    new-instance v6, Lg/gzy;

    invoke-direct {v6, v2, v7}, Lg/gzy;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Lg/gzy;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v6, v1, Lg/hbq;->n:Lg/gzy;

    sget-object v2, Lg/acs;->t:[I

    invoke-virtual {v6, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v6, 0x56

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v1, Lg/hbq;->m:I

    invoke-virtual {v2, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v1, Lg/hbq;->e:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Lg/bvz;

    iget-object v6, v1, Lg/hbq;->n:Lg/gzy;

    invoke-direct {v2, v0, v6}, Lg/bvz;-><init>(Lg/dre;Lg/gzy;)V

    iput-object v2, v1, Lg/hbq;->g:Lg/bvz;

    const/16 v2, 0x51

    iput v2, v1, Lg/hbq;->o:I

    goto :goto_4

    :cond_b
    iget-boolean v2, v1, Lg/hbq;->d:Z

    if-eqz v2, :cond_c

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_c

    iget-object v2, v1, Lg/hbq;->g:Lg/bvz;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_c
    :goto_4
    iget-object v2, v1, Lg/hbq;->p:Landroid/view/View;

    if-eqz v2, :cond_d

    iput-object v2, v1, Lg/hbq;->i:Landroid/view/View;

    goto :goto_5

    :cond_d
    iget-object v2, v1, Lg/hbq;->a:Lg/ftn;

    if-nez v2, :cond_e

    goto/16 :goto_8

    :cond_e
    iget-object v2, v0, Lg/dre;->ai:Lg/dcq;

    if-nez v2, :cond_f

    new-instance v2, Lg/dcq;

    const/4 v6, 0x4

    invoke-direct {v2, v6, v0}, Lg/dcq;-><init>(ILjava/lang/Object;)V

    iput-object v2, v0, Lg/dre;->ai:Lg/dcq;

    :cond_f
    iget-object v2, v0, Lg/dre;->ai:Lg/dcq;

    iget-object v6, v1, Lg/hbq;->l:Lg/cuk;

    if-nez v6, :cond_10

    new-instance v6, Lg/cuk;

    iget-object v9, v1, Lg/hbq;->n:Lg/gzy;

    invoke-direct {v6, v9}, Lg/cuk;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v6, v1, Lg/hbq;->l:Lg/cuk;

    iput-object v2, v6, Lg/cuk;->k:Lg/caf;

    iget-object v2, v1, Lg/hbq;->a:Lg/ftn;

    iget-object v9, v2, Lg/ftn;->i:Landroid/content/Context;

    invoke-virtual {v2, v6, v9}, Lg/ftn;->ap(Lg/us;Landroid/content/Context;)V

    :cond_10
    iget-object v2, v1, Lg/hbq;->l:Lg/cuk;

    iget-object v6, v1, Lg/hbq;->g:Lg/bvz;

    iget-object v9, v2, Lg/cuk;->j:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v9, :cond_12

    iget-object v9, v2, Lg/cuk;->m:Landroid/view/LayoutInflater;

    const v10, 0x7f0c000d

    invoke-virtual {v9, v10, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v6, v2, Lg/cuk;->j:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v6, v2, Lg/cuk;->n:Lg/aih;

    if-nez v6, :cond_11

    new-instance v6, Lg/aih;

    invoke-direct {v6, v2}, Lg/aih;-><init>(Lg/cuk;)V

    iput-object v6, v2, Lg/cuk;->n:Lg/aih;

    :cond_11
    iget-object v6, v2, Lg/cuk;->j:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v9, v2, Lg/cuk;->n:Lg/aih;

    invoke-virtual {v6, v9}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v6, v2, Lg/cuk;->j:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v6, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_12
    iget-object v2, v2, Lg/cuk;->j:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v2, v1, Lg/hbq;->i:Landroid/view/View;

    if-eqz v2, :cond_19

    :goto_5
    iget-object v2, v1, Lg/hbq;->i:Landroid/view/View;

    if-nez v2, :cond_13

    goto/16 :goto_8

    :cond_13
    iget-object v2, v1, Lg/hbq;->p:Landroid/view/View;

    if-eqz v2, :cond_14

    goto :goto_6

    :cond_14
    iget-object v2, v1, Lg/hbq;->l:Lg/cuk;

    iget-object v6, v2, Lg/cuk;->n:Lg/aih;

    if-nez v6, :cond_15

    new-instance v6, Lg/aih;

    invoke-direct {v6, v2}, Lg/aih;-><init>(Lg/cuk;)V

    iput-object v6, v2, Lg/cuk;->n:Lg/aih;

    :cond_15
    iget-object v2, v2, Lg/cuk;->n:Lg/aih;

    invoke-virtual {v2}, Lg/aih;->getCount()I

    move-result v2

    if-lez v2, :cond_19

    :goto_6
    iget-object v2, v1, Lg/hbq;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_16

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_16
    iget v6, v1, Lg/hbq;->m:I

    iget-object v9, v1, Lg/hbq;->g:Lg/bvz;

    invoke-virtual {v9, v6}, Lg/bvz;->setBackgroundResource(I)V

    iget-object v6, v1, Lg/hbq;->i:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v9, v6, Landroid/view/ViewGroup;

    if-eqz v9, :cond_17

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v9, v1, Lg/hbq;->i:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_17
    iget-object v6, v1, Lg/hbq;->g:Lg/bvz;

    iget-object v9, v1, Lg/hbq;->i:Landroid/view/View;

    invoke-virtual {v6, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v1, Lg/hbq;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, v1, Lg/hbq;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_18
    const/4 v10, -0x2

    :goto_7
    iput-boolean v7, v1, Lg/hbq;->f:Z

    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    const/high16 v15, 0x820000

    const/16 v16, -0x3

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3ea

    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v2, v1, Lg/hbq;->o:I

    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, v1, Lg/hbq;->e:I

    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v2, v1, Lg/hbq;->g:Lg/bvz;

    invoke-interface {v4, v2, v9}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v5, v1, Lg/hbq;->k:Z

    if-nez v3, :cond_1a

    invoke-virtual {v0}, Lg/dre;->cw()V

    return-void

    :cond_19
    :goto_8
    iput-boolean v5, v1, Lg/hbq;->d:Z

    :cond_1a
    :goto_9
    return-void
.end method

.method public final cp(ILg/hbq;Lg/ftn;)V
    .locals 3

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lg/dre;->ak:[Lg/hbq;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Lg/hbq;->a:Lg/ftn;

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean p2, p2, Lg/hbq;->k:Z

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lg/dre;->af:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lg/dre;->bx:Lg/ecc;

    iget-object v0, p0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v1, p2, Lg/ecc;->c:Z

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p2, Lg/ecc;->c:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v2, p2, Lg/ecc;->c:Z

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public final cq(Lg/ftn;)V
    .locals 2

    iget-boolean v0, p0, Lg/dre;->ap:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/dre;->ap:Z

    iget-object v0, p0, Lg/dre;->be:Lg/eaz;

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ah()V

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Lg/fps;

    check-cast v0, Lg/fxu;

    iget-object v0, v0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->ab:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->b:Lg/esf;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/esf;->ah()Z

    iget-object v0, v0, Lg/esf;->k:Lg/csq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/byn;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lg/byn;->g:Lg/gox;

    invoke-interface {v0}, Lg/erj;->dismiss()V

    :cond_1
    iget-object v0, p0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lg/dre;->af:Z

    if-nez v1, :cond_2

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/dre;->ap:Z

    return-void
.end method

.method public final cr()Z
    .locals 5

    iget-boolean v0, p0, Lg/dre;->bs:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/dre;->bs:Z

    invoke-virtual {p0, v1}, Lg/dre;->cv(I)Lg/hbq;

    move-result-object v2

    iget-boolean v3, v2, Lg/hbq;->k:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-nez v0, :cond_2

    invoke-virtual {p0, v2, v4}, Lg/dre;->cy(Lg/hbq;Z)V

    return v4

    :cond_0
    iget-object v0, p0, Lg/dre;->ax:Lg/gtg;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/gtg;->m()V

    return v4

    :cond_1
    invoke-virtual {p0}, Lg/dre;->cj()V

    iget-object v0, p0, Lg/dre;->ao:Lg/gkl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lg/gkl;->ak()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return v4

    :cond_3
    return v1
.end method

.method public final cs(ZZ)Z
    .locals 19

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lg/dre;->af:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget v0, v1, Lg/dre;->bd:I

    const/16 v3, -0x64

    if-eq v0, v3, :cond_1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_1
    sget v0, Lg/dkn;->h:I

    goto :goto_0

    :goto_1
    iget-object v4, v1, Lg/dre;->aw:Landroid/content/Context;

    invoke-virtual {v1, v4, v3}, Lg/dre;->cx(Landroid/content/Context;I)I

    move-result v5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    const/4 v7, 0x0

    if-ge v0, v6, :cond_2

    invoke-static {v4}, Lg/dre;->cd(Landroid/content/Context;)Lg/azt;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v7

    :goto_2
    if-nez p2, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-static {v6}, Lg/dre;->ce(Landroid/content/res/Configuration;)Lg/azt;

    move-result-object v6

    :cond_3
    invoke-static {v4, v5, v6, v7, v2}, Lg/dre;->cc(Landroid/content/Context;ILg/azt;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v8

    iget-boolean v9, v1, Lg/dre;->bi:Z

    const/16 v10, 0x18

    const/4 v11, 0x1

    iget-object v12, v1, Lg/dre;->ar:Ljava/lang/Object;

    if-nez v9, :cond_7

    instance-of v9, v12, Landroid/app/Activity;

    if-eqz v9, :cond_7

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    if-nez v9, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    const/16 v13, 0x1d

    if-lt v0, v13, :cond_5

    const/high16 v0, 0x100c0000

    goto :goto_3

    :cond_5
    if-lt v0, v10, :cond_6

    const/high16 v0, 0xc0000

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    :try_start_0
    new-instance v13, Landroid/content/ComponentName;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-direct {v13, v4, v14}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v9, v13, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v0, v1, Lg/dre;->aj:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    iput v2, v1, Lg/dre;->aj:I

    :cond_7
    :goto_4
    iput-boolean v11, v1, Lg/dre;->bi:Z

    iget v0, v1, Lg/dre;->aj:I

    :goto_5
    iget-object v9, v1, Lg/dre;->br:Landroid/content/res/Configuration;

    if-nez v9, :cond_8

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    :cond_8
    iget v13, v9, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v13, v13, 0x30

    iget v14, v8, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v14, v14, 0x30

    invoke-static {v9}, Lg/dre;->ce(Landroid/content/res/Configuration;)Lg/azt;

    move-result-object v9

    if-nez v6, :cond_9

    move-object v15, v7

    goto :goto_6

    :cond_9
    invoke-static {v8}, Lg/dre;->ce(Landroid/content/res/Configuration;)Lg/azt;

    move-result-object v15

    :goto_6
    if-eq v13, v14, :cond_a

    const/16 v13, 0x200

    goto :goto_7

    :cond_a
    const/4 v13, 0x0

    :goto_7
    if-eqz v15, :cond_b

    invoke-virtual {v9, v15}, Lg/azt;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    or-int/lit16 v13, v13, 0x2004

    :cond_b
    not-int v9, v0

    and-int/2addr v9, v13

    const/16 v11, 0x1c

    if-eqz v9, :cond_f

    if-eqz p1, :cond_f

    iget-boolean v9, v1, Lg/dre;->as:Z

    if-eqz v9, :cond_f

    sget-boolean v9, Lg/dre;->ab:Z

    if-nez v9, :cond_c

    iget-boolean v9, v1, Lg/dre;->ag:Z

    if-eqz v9, :cond_f

    :cond_c
    instance-of v9, v12, Landroid/app/Activity;

    if-eqz v9, :cond_f

    move-object v9, v12

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isChild()Z

    move-result v16

    if-nez v16, :cond_f

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v7, v2, :cond_d

    and-int/lit16 v2, v13, 0x2000

    if-eqz v2, :cond_d

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v8}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_d
    if-lt v7, v11, :cond_e

    invoke-virtual {v9}, Landroid/app/Activity;->recreate()V

    goto :goto_8

    :cond_e
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lg/fvi;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v9}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_8
    const/4 v2, 0x1

    goto :goto_9

    :cond_f
    const/4 v2, 0x0

    :goto_9
    if-nez v2, :cond_24

    if-eqz v13, :cond_24

    and-int/2addr v0, v13

    if-ne v0, v13, :cond_10

    const/4 v2, 0x1

    goto :goto_a

    :cond_10
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Landroid/content/res/Configuration;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, -0x31

    or-int/2addr v0, v14

    iput v0, v8, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v15, :cond_12

    iget-object v0, v15, Lg/azt;->b:Lg/cmn;

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v10, :cond_11

    invoke-static {v8, v15}, Lg/alx;->a(Landroid/content/res/Configuration;Lg/azt;)V

    goto :goto_b

    :cond_11
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Lg/cmn;->get(I)Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-interface {v0, v9}, Lg/cmn;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    :cond_12
    :goto_b
    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1a

    if-ge v0, v14, :cond_1f

    if-lt v0, v11, :cond_13

    goto/16 :goto_18

    :cond_13
    const-string v11, "mDrawableCache"

    const-class v14, Landroid/content/res/Resources;

    const-string v9, "ResourcesFlusher"

    if-lt v0, v10, :cond_19

    sget-boolean v0, Lg/acr;->a:Z

    if-nez v0, :cond_14

    :try_start_1
    const-string v0, "mResourcesImpl"

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lg/acr;->e:Ljava/lang/reflect/Field;

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_c
    const/4 v14, 0x1

    goto :goto_d

    :catch_1
    move-exception v0

    const-string v14, "Could not retrieve Resources#mResourcesImpl field"

    invoke-static {v9, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :goto_d
    sput-boolean v14, Lg/acr;->a:Z

    :cond_14
    sget-object v0, Lg/acr;->e:Ljava/lang/reflect/Field;

    if-nez v0, :cond_15

    goto/16 :goto_18

    :cond_15
    :try_start_2
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v0

    goto :goto_e

    :catch_2
    move-exception v0

    const-string v7, "Could not retrieve value from Resources#mResourcesImpl"

    invoke-static {v9, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    :goto_e
    if-nez v7, :cond_16

    goto/16 :goto_18

    :cond_16
    sget-boolean v0, Lg/acr;->v:Z

    if-nez v0, :cond_17

    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lg/acr;->o:Ljava/lang/reflect/Field;

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_f
    const/4 v14, 0x1

    goto :goto_10

    :catch_3
    move-exception v0

    const-string v11, "Could not retrieve ResourcesImpl#mDrawableCache field"

    invoke-static {v9, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    :goto_10
    sput-boolean v14, Lg/acr;->v:Z

    :cond_17
    sget-object v0, Lg/acr;->o:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_18

    :try_start_4
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_11

    :catch_4
    move-exception v0

    const-string v7, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    invoke-static {v9, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    const/4 v7, 0x0

    :goto_11
    if-eqz v7, :cond_1f

    invoke-static {v7}, Lg/acr;->at(Ljava/lang/Object;)V

    goto/16 :goto_18

    :cond_19
    const-string v10, "Could not retrieve value from Resources#mDrawableCache"

    move/from16 v17, v2

    const-string v2, "Could not retrieve Resources#mDrawableCache field"

    move-object/from16 v18, v15

    const/16 v15, 0x17

    if-lt v0, v15, :cond_1d

    sget-boolean v0, Lg/acr;->v:Z

    if-nez v0, :cond_1a

    :try_start_5
    invoke-virtual {v14, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lg/acr;->o:Ljava/lang/reflect/Field;
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_6

    const/4 v14, 0x1

    :try_start_6
    invoke-virtual {v0, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_13

    :catch_5
    move-exception v0

    goto :goto_12

    :catch_6
    move-exception v0

    const/4 v14, 0x1

    :goto_12
    invoke-static {v9, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    sput-boolean v14, Lg/acr;->v:Z

    :cond_1a
    sget-object v0, Lg/acr;->o:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1b

    :try_start_7
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_14

    :catch_7
    move-exception v0

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b
    const/4 v7, 0x0

    :goto_14
    if-nez v7, :cond_1c

    goto :goto_19

    :cond_1c
    invoke-static {v7}, Lg/acr;->at(Ljava/lang/Object;)V

    goto :goto_19

    :cond_1d
    sget-boolean v0, Lg/acr;->v:Z

    if-nez v0, :cond_1e

    :try_start_8
    invoke-virtual {v14, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lg/acr;->o:Ljava/lang/reflect/Field;
    :try_end_8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_8} :catch_9

    const/4 v14, 0x1

    :try_start_9
    invoke-virtual {v0, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_16

    :catch_8
    move-exception v0

    goto :goto_15

    :catch_9
    move-exception v0

    const/4 v14, 0x1

    :goto_15
    invoke-static {v9, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    sput-boolean v14, Lg/acr;->v:Z

    :cond_1e
    sget-object v0, Lg/acr;->o:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_20

    :try_start_a
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_a

    move-object v7, v0

    goto :goto_17

    :catch_a
    move-exception v0

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    :goto_17
    if-eqz v7, :cond_20

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    goto :goto_19

    :cond_1f
    :goto_18
    move/from16 v17, v2

    move-object/from16 v18, v15

    :cond_20
    :goto_19
    iget v0, v1, Lg/dre;->bt:I

    if-eqz v0, :cond_21

    invoke-virtual {v4, v0}, Landroid/content/Context;->setTheme(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x17

    if-lt v0, v15, :cond_21

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v2, v1, Lg/dre;->bt:I

    const/4 v14, 0x1

    invoke-virtual {v0, v2, v14}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_1a

    :cond_21
    const/4 v14, 0x1

    :goto_1a
    if-eqz v17, :cond_23

    instance-of v0, v12, Landroid/app/Activity;

    if-eqz v0, :cond_23

    move-object v0, v12

    check-cast v0, Landroid/app/Activity;

    instance-of v2, v0, Lg/iz;

    if-eqz v2, :cond_22

    move-object v2, v0

    check-cast v2, Lg/iz;

    invoke-interface {v2}, Lg/iz;->getLifecycle()Lg/euu;

    move-result-object v2

    check-cast v2, Lg/ajs;

    iget-object v2, v2, Lg/ajs;->g:Lg/fqv;

    sget-object v7, Lg/fqv;->CREATED:Lg/fqv;

    invoke-virtual {v2, v7}, Lg/fqv;->b(Lg/fqv;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v0, v8}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_1b

    :cond_22
    iget-boolean v2, v1, Lg/dre;->ag:Z

    if-eqz v2, :cond_23

    iget-boolean v2, v1, Lg/dre;->af:Z

    if-nez v2, :cond_23

    invoke-virtual {v0, v8}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_23
    :goto_1b
    const/4 v11, 0x1

    goto :goto_1c

    :cond_24
    move-object/from16 v18, v15

    move v11, v2

    :goto_1c
    if-eqz v11, :cond_26

    instance-of v0, v12, Lg/ub;

    if-eqz v0, :cond_26

    and-int/lit16 v0, v13, 0x200

    if-eqz v0, :cond_25

    move-object v0, v12

    check-cast v0, Lg/ub;

    invoke-virtual {v0, v5}, Lg/ub;->onNightModeChanged(I)V

    :cond_25
    and-int/lit8 v0, v13, 0x4

    if-eqz v0, :cond_26

    check-cast v12, Lg/ub;

    invoke-virtual {v12, v6}, Lg/ub;->onLocalesChanged(Lg/azt;)V

    :cond_26
    if-eqz v18, :cond_28

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lg/dre;->ce(Landroid/content/res/Configuration;)Lg/azt;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v2, v5, :cond_27

    invoke-static {v0}, Lg/alx;->d(Lg/azt;)V

    goto :goto_1d

    :cond_27
    iget-object v0, v0, Lg/azt;->b:Lg/cmn;

    const/4 v9, 0x0

    invoke-interface {v0, v9}, Lg/cmn;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    :cond_28
    :goto_1d
    if-nez v3, :cond_29

    invoke-virtual {v1, v4}, Lg/dre;->cl(Landroid/content/Context;)Lg/cgo;

    move-result-object v0

    invoke-virtual {v0}, Lg/cgo;->ah()V

    goto :goto_1e

    :cond_29
    iget-object v0, v1, Lg/dre;->an:Lg/eh;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lg/cgo;->ag()V

    :cond_2a
    :goto_1e
    const/4 v0, 0x3

    if-ne v3, v0, :cond_2c

    iget-object v0, v1, Lg/dre;->bl:Lg/eh;

    if-nez v0, :cond_2b

    new-instance v0, Lg/eh;

    invoke-direct {v0, v1, v4}, Lg/eh;-><init>(Lg/dre;Landroid/content/Context;)V

    iput-object v0, v1, Lg/dre;->bl:Lg/eh;

    :cond_2b
    iget-object v0, v1, Lg/dre;->bl:Lg/eh;

    invoke-virtual {v0}, Lg/cgo;->ah()V

    goto :goto_1f

    :cond_2c
    iget-object v0, v1, Lg/dre;->bl:Lg/eh;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lg/cgo;->ag()V

    :cond_2d
    :goto_1f
    return v11
.end method

.method public final ct(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lg/dre;->cv(I)Lg/hbq;

    move-result-object v0

    iget-object v1, v0, Lg/hbq;->a:Lg/ftn;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lg/hbq;->a:Lg/ftn;

    invoke-virtual {v2, v1}, Lg/ftn;->as(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Lg/hbq;->j:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Lg/hbq;->a:Lg/ftn;

    invoke-virtual {v1}, Lg/ftn;->aj()V

    iget-object v1, v0, Lg/hbq;->a:Lg/ftn;

    invoke-virtual {v1}, Lg/ftn;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/hbq;->c:Z

    iput-boolean v1, v0, Lg/hbq;->d:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lg/dre;->be:Lg/eaz;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lg/dre;->cv(I)Lg/hbq;

    move-result-object v0

    iput-boolean p1, v0, Lg/hbq;->b:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lg/dre;->cn(Lg/hbq;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public final cu(Landroid/view/Window;)V
    .locals 7

    const-string v0, "AppCompat has already installed itself into the Window"

    iget-object v1, p0, Lg/dre;->au:Landroid/view/Window;

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    instance-of v2, v1, Lg/ecc;

    if-nez v2, :cond_5

    new-instance v0, Lg/ecc;

    invoke-direct {v0, p0, v1}, Lg/ecc;-><init>(Lg/dre;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Lg/dre;->bx:Lg/ecc;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v0, p0, Lg/dre;->aw:Landroid/content/Context;

    sget-object v1, Lg/dre;->ac:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lg/cfl;->f()Lg/cfl;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v5, v4, Lg/cfl;->c:Lg/ezw;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v3, v6}, Lg/ezw;->x(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p1, p0, Lg/dre;->au:Landroid/view/Window;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_4

    iget-object p1, p0, Lg/dre;->bz:Landroid/window/OnBackInvokedDispatcher;

    if-nez p1, :cond_4

    iget-object v0, p0, Lg/dre;->ar:Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lg/dre;->bc:Landroid/window/OnBackInvokedCallback;

    if-eqz v1, :cond_2

    invoke-static {p1, v1}, Lg/hdi;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lg/dre;->bc:Landroid/window/OnBackInvokedCallback;

    :cond_2
    instance-of p1, v0, Landroid/app/Activity;

    if-eqz p1, :cond_3

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {v0}, Lg/hdi;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iput-object p1, p0, Lg/dre;->bz:Landroid/window/OnBackInvokedDispatcher;

    goto :goto_1

    :cond_3
    iput-object v2, p0, Lg/dre;->bz:Landroid/window/OnBackInvokedDispatcher;

    :goto_1
    invoke-virtual {p0}, Lg/dre;->cw()V

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final cv(I)Lg/hbq;
    .locals 4

    iget-object v0, p0, Lg/dre;->ak:[Lg/hbq;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-gt v2, p1, :cond_2

    :cond_0
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [Lg/hbq;

    if-eqz v0, :cond_1

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Lg/dre;->ak:[Lg/hbq;

    move-object v0, v2

    :cond_2
    aget-object v2, v0, p1

    if-nez v2, :cond_3

    new-instance v2, Lg/hbq;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput p1, v2, Lg/hbq;->h:I

    iput-boolean v1, v2, Lg/hbq;->d:Z

    aput-object v2, v0, p1

    :cond_3
    return-object v2
.end method

.method public final cw()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lg/dre;->bz:Landroid/window/OnBackInvokedDispatcher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lg/dre;->cv(I)Lg/hbq;

    move-result-object v0

    iget-boolean v0, v0, Lg/hbq;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lg/dre;->ax:Lg/gtg;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Lg/dre;->bc:Landroid/window/OnBackInvokedCallback;

    if-nez v0, :cond_3

    iget-object v0, p0, Lg/dre;->bz:Landroid/window/OnBackInvokedDispatcher;

    invoke-static {v0, p0}, Lg/hdi;->b(Ljava/lang/Object;Lg/dre;)Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    iput-object v0, p0, Lg/dre;->bc:Landroid/window/OnBackInvokedCallback;

    return-void

    :cond_3
    if-nez v1, :cond_4

    iget-object v0, p0, Lg/dre;->bc:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lg/dre;->bz:Landroid/window/OnBackInvokedDispatcher;

    invoke-static {v1, v0}, Lg/hdi;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/dre;->bc:Landroid/window/OnBackInvokedCallback;

    :cond_4
    return-void
.end method

.method public final cx(Landroid/content/Context;I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p2, v0, :cond_5

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lg/dre;->bl:Lg/eh;

    if-nez p2, :cond_0

    new-instance p2, Lg/eh;

    invoke-direct {p2, p0, p1}, Lg/eh;-><init>(Lg/dre;Landroid/content/Context;)V

    iput-object p2, p0, Lg/dre;->bl:Lg/eh;

    :cond_0
    iget-object p1, p0, Lg/dre;->bl:Lg/eh;

    invoke-virtual {p1}, Lg/eh;->f()I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "uimode"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lg/dre;->cl(Landroid/content/Context;)Lg/cgo;

    move-result-object p1

    invoke-virtual {p1}, Lg/cgo;->f()I

    move-result p1

    return p1

    :cond_4
    return p2

    :cond_5
    :goto_0
    return v1
.end method

.method public final cy(Lg/hbq;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p1, Lg/hbq;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/dre;->be:Lg/eaz;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ah()V

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Lg/fps;

    check-cast v0, Lg/fxu;

    iget-object v0, v0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->ay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lg/hbq;->a:Lg/ftn;

    invoke-virtual {p0, p1}, Lg/dre;->cq(Lg/ftn;)V

    return-void

    :cond_0
    iget-object v0, p0, Lg/dre;->aw:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p1, Lg/hbq;->k:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lg/hbq;->g:Lg/bvz;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    iget p2, p1, Lg/hbq;->h:I

    invoke-virtual {p0, p2, p1, v1}, Lg/dre;->cp(ILg/hbq;Lg/ftn;)V

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p1, Lg/hbq;->b:Z

    iput-boolean p2, p1, Lg/hbq;->f:Z

    iput-boolean p2, p1, Lg/hbq;->k:Z

    iput-object v1, p1, Lg/hbq;->i:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lg/hbq;->d:Z

    iget-object p2, p0, Lg/dre;->bo:Lg/hbq;

    if-ne p2, p1, :cond_2

    iput-object v1, p0, Lg/dre;->bo:Lg/hbq;

    :cond_2
    iget p1, p1, Lg/hbq;->h:I

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lg/dre;->cw()V

    :cond_3
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 8

    iget-object p1, p0, Lg/dre;->bj:Lg/gyl;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    sget-object p1, Lg/acs;->t:[I

    iget-object v0, p0, Lg/dre;->aw:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v2, 0x74

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v2, :cond_0

    new-instance p1, Lg/gyl;

    invoke-direct {p1}, Lg/gyl;-><init>()V

    iput-object p1, p0, Lg/dre;->bj:Lg/gyl;

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gyl;

    iput-object p1, p0, Lg/dre;->bj:Lg/gyl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance p1, Lg/gyl;

    invoke-direct {p1}, Lg/gyl;-><init>()V

    iput-object p1, p0, Lg/dre;->bj:Lg/gyl;

    :cond_1
    :goto_0
    iget-object p1, p0, Lg/dre;->bj:Lg/gyl;

    sget v0, Lg/awp;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lg/acs;->e:[I

    const/4 v5, 0x0

    invoke-virtual {p3, p4, v0, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_3

    instance-of v0, p3, Lg/gzy;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Lg/gzy;

    iget v0, v0, Lg/gzy;->d:I

    if-eq v0, v3, :cond_3

    :cond_2
    new-instance v0, Lg/gzy;

    invoke-direct {v0, p3, v3}, Lg/gzy;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_3
    move-object v0, p3

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_2
    const/4 v2, -0x1

    goto/16 :goto_3

    :sswitch_0
    const-string v2, "Button"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const/16 v2, 0xd

    goto/16 :goto_3

    :sswitch_1
    const-string v2, "EditText"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    const/16 v2, 0xc

    goto/16 :goto_3

    :sswitch_2
    const-string v2, "CheckBox"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    const/16 v2, 0xb

    goto/16 :goto_3

    :sswitch_3
    const-string v2, "AutoCompleteTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    const/16 v2, 0xa

    goto/16 :goto_3

    :sswitch_4
    const-string v2, "ImageView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    const/16 v2, 0x9

    goto/16 :goto_3

    :sswitch_5
    const-string v2, "ToggleButton"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    :cond_9
    const/16 v2, 0x8

    goto :goto_3

    :sswitch_6
    const-string v2, "RadioButton"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_2

    :cond_a
    const/4 v2, 0x7

    goto :goto_3

    :sswitch_7
    const-string v2, "Spinner"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_2

    :cond_b
    const/4 v2, 0x6

    goto :goto_3

    :sswitch_8
    const-string v2, "SeekBar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_2

    :cond_c
    const/4 v2, 0x5

    goto :goto_3

    :sswitch_9
    const-string v3, "ImageButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_2

    :sswitch_a
    const-string v2, "TextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_2

    :cond_d
    const/4 v2, 0x3

    goto :goto_3

    :sswitch_b
    const-string v2, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_2

    :cond_e
    const/4 v2, 0x2

    goto :goto_3

    :sswitch_c
    const-string v2, "CheckedTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_2

    :cond_f
    const/4 v2, 0x1

    goto :goto_3

    :sswitch_d
    const-string v2, "RatingBar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_2

    :cond_10
    const/4 v2, 0x0

    :cond_11
    :goto_3
    packed-switch v2, :pswitch_data_0

    move-object v2, v1

    goto :goto_4

    :pswitch_0
    invoke-virtual {p1, v0, p4}, Lg/gyl;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Lg/bbj;

    move-result-object v2

    goto :goto_4

    :pswitch_1
    new-instance v2, Lg/duo;

    invoke-direct {v2, v0, p4}, Lg/duo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_2
    invoke-virtual {p1, v0, p4}, Lg/gyl;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Lg/fqn;

    move-result-object v2

    goto :goto_4

    :pswitch_3
    invoke-virtual {p1, v0, p4}, Lg/gyl;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Lg/dzp;

    move-result-object v2

    goto :goto_4

    :pswitch_4
    new-instance v2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v2, v0, p4}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_5
    new-instance v2, Lg/bdr;

    invoke-direct {v2, v0, p4}, Lg/bdr;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_6
    invoke-virtual {p1, v0, p4}, Lg/gyl;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lg/ajz;

    move-result-object v2

    goto :goto_4

    :pswitch_7
    new-instance v2, Lg/erv;

    invoke-direct {v2, v0, p4}, Lg/erv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_8
    new-instance v2, Lg/har;

    invoke-direct {v2, v0, p4}, Lg/har;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_9
    new-instance v2, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-direct {v2, v0, p4}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_a
    invoke-virtual {p1, v0, p4}, Lg/gyl;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v2

    goto :goto_4

    :pswitch_b
    new-instance v2, Lg/eja;

    invoke-direct {v2, v0, p4}, Lg/eja;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_c
    new-instance v2, Lg/hbf;

    invoke-direct {v2, v0, p4}, Lg/hbf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_d
    new-instance v2, Lg/ceu;

    invoke-direct {v2, v0, p4}, Lg/ceu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_4
    if-nez v2, :cond_16

    if-eq p3, v0, :cond_16

    iget-object p3, p1, Lg/gyl;->m:[Ljava/lang/Object;

    const-string v2, "view"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string p2, "class"

    invoke-interface {p4, v1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_12
    :try_start_1
    aput-object v0, p3, v5

    aput-object p4, p3, v6

    const/16 v2, 0x2e

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v7, v2, :cond_15

    const/4 v2, 0x0

    :goto_5
    sget-object v3, Lg/gyl;->l:[Ljava/lang/String;

    if-ge v2, v4, :cond_14

    aget-object v3, v3, v2

    invoke-virtual {p1, v0, p2, v3}, Lg/gyl;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_13

    aput-object v1, p3, v5

    aput-object v1, p3, v6

    move-object v1, v3

    goto :goto_7

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_6

    :cond_14
    aput-object v1, p3, v5

    aput-object v1, p3, v6

    goto :goto_7

    :cond_15
    :try_start_2
    invoke-virtual {p1, v0, p2, v1}, Lg/gyl;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    aput-object v1, p3, v5

    aput-object v1, p3, v6

    move-object v1, p1

    goto :goto_7

    :goto_6
    aput-object v1, p3, v5

    aput-object v1, p3, v6

    throw p1

    :catch_0
    aput-object v1, p3, v5

    aput-object v1, p3, v6

    goto :goto_7

    :cond_16
    move-object v1, v2

    :goto_7
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p2, p1, Landroid/content/ContextWrapper;

    if-eqz p2, :cond_19

    invoke-virtual {v1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p2

    if-nez p2, :cond_17

    goto :goto_8

    :cond_17
    sget-object p2, Lg/gyl;->k:[I

    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_18

    new-instance p3, Lg/bxg;

    invoke-direct {p3, v1, p2}, Lg/bxg;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_19
    :goto_8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-le p1, v6, :cond_1a

    goto :goto_9

    :cond_1a
    sget-object p1, Lg/gyl;->g:[I

    invoke-virtual {v0, p4, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const-class v4, Ljava/lang/Boolean;

    if-eqz p2, :cond_1b

    invoke-virtual {p1, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    sget-object p3, Lg/goi;->c:Ljava/util/WeakHashMap;

    new-instance v2, Lg/hej;

    const v3, 0x7f090332

    const/4 v7, 0x3

    invoke-direct/range {v2 .. v7}, Lg/hej;-><init>(ILjava/lang/Class;III)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, v1, p2}, Lg/bwp;->f(Landroid/view/View;Ljava/lang/Object;)V

    :cond_1b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p1, Lg/gyl;->h:[I

    invoke-virtual {v0, p4, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lg/goi;->r(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p1, Lg/gyl;->i:[I

    invoke-virtual {v0, p4, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1d

    invoke-virtual {p1, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    sget-object p3, Lg/goi;->c:Ljava/util/WeakHashMap;

    new-instance v2, Lg/hej;

    const v3, 0x7f090338

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lg/hej;-><init>(ILjava/lang/Class;III)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, v1, p2}, Lg/bwp;->f(Landroid/view/View;Ljava/lang/Object;)V

    :cond_1d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1e
    :goto_9
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lg/dre;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final p(Lg/ftn;Landroid/view/MenuItem;)Z
    .locals 7

    iget-object v0, p0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lg/dre;->af:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lg/ftn;->aa()Lg/ftn;

    move-result-object p1

    iget-object v2, p0, Lg/dre;->ak:[Lg/hbq;

    if-eqz v2, :cond_0

    array-length v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    iget-object v6, v5, Lg/hbq;->a:Lg/ftn;

    if-ne v6, p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_3

    iget p1, v5, Lg/hbq;->h:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public final s(I)Z
    .locals 5

    const/16 v0, 0x8

    const/16 v1, 0x6d

    const/16 v2, 0x6c

    if-ne p1, v0, :cond_0

    const/16 p1, 0x6c

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    const/16 p1, 0x6d

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lg/dre;->av:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne p1, v2, :cond_2

    return v3

    :cond_2
    iget-boolean v0, p0, Lg/dre;->ay:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-ne p1, v4, :cond_3

    iput-boolean v3, p0, Lg/dre;->ay:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    iget-object v0, p0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p0}, Lg/dre;->ci()V

    iput-boolean v4, p0, Lg/dre;->ca:Z

    return v4

    :cond_5
    invoke-virtual {p0}, Lg/dre;->ci()V

    iput-boolean v4, p0, Lg/dre;->ay:Z

    return v4

    :cond_6
    invoke-virtual {p0}, Lg/dre;->ci()V

    iput-boolean v4, p0, Lg/dre;->bv:Z

    return v4

    :cond_7
    invoke-virtual {p0}, Lg/dre;->ci()V

    iput-boolean v4, p0, Lg/dre;->bb:Z

    return v4

    :cond_8
    invoke-virtual {p0}, Lg/dre;->ci()V

    iput-boolean v4, p0, Lg/dre;->aq:Z

    return v4

    :cond_9
    invoke-virtual {p0}, Lg/dre;->ci()V

    iput-boolean v4, p0, Lg/dre;->av:Z

    return v4
.end method

.method public final t(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lg/dre;->ck()V

    iget-object v0, p0, Lg/dre;->bq:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lg/dre;->bx:Lg/ecc;

    iget-object v0, p0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/ecc;->h(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final u(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lg/dre;->bw:Ljava/lang/CharSequence;

    iget-object v0, p0, Lg/dre;->be:Lg/eaz;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lg/eaz;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lg/dre;->ao:Lg/gkl;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lg/gkl;->ah(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lg/dre;->bk:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final v(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lg/dre;->ck()V

    iget-object v0, p0, Lg/dre;->bq:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lg/dre;->bx:Lg/ecc;

    iget-object p2, p0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/ecc;->h(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final w()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/dre;->as:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lg/dre;->cs(ZZ)Z

    invoke-virtual {p0}, Lg/dre;->cm()V

    iget-object v1, p0, Lg/dre;->ar:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    :try_start_0
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Lg/ckd;->ac(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lg/dre;->ao:Lg/gkl;

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lg/dre;->ba:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v0}, Lg/gkl;->ad(Z)V

    :cond_1
    :goto_1
    sget-object v1, Lg/dkn;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lg/dkn;->o(Lg/dre;)V

    sget-object v2, Lg/dkn;->b:Lg/glm;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lg/glm;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_2
    :goto_2
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Lg/dre;->aw:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lg/dre;->br:Landroid/content/res/Configuration;

    iput-boolean v0, p0, Lg/dre;->ag:Z

    return-void
.end method

.method public final x()V
    .locals 3

    iget-object v0, p0, Lg/dre;->ar:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lg/dkn;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lg/dkn;->o(Lg/dre;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lg/dre;->bu:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lg/dre;->bp:Lg/gkx;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/dre;->af:Z

    iget v0, p0, Lg/dre;->bd:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lg/dre;->ar:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lg/dre;->ad:Lg/bcp;

    iget-object v1, p0, Lg/dre;->ar:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lg/dre;->bd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Lg/dre;->ad:Lg/bcp;

    iget-object v1, p0, Lg/dre;->ar:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/bcp;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lg/dre;->ao:Lg/gkl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lg/gkl;->i()V

    :cond_3
    iget-object v0, p0, Lg/dre;->an:Lg/eh;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lg/cgo;->ag()V

    :cond_4
    iget-object v0, p0, Lg/dre;->bl:Lg/eh;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lg/cgo;->ag()V

    :cond_5
    return-void
.end method

.method public final y(I)V
    .locals 2

    invoke-virtual {p0}, Lg/dre;->ck()V

    iget-object v0, p0, Lg/dre;->bq:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lg/dre;->aw:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Lg/dre;->bx:Lg/ecc;

    iget-object v0, p0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/ecc;->h(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final z(Lg/dbn;)Lg/gtg;
    .locals 9

    if-eqz p1, :cond_12

    iget-object v0, p0, Lg/dre;->ax:Lg/gtg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/gtg;->m()V

    :cond_0
    new-instance v0, Lg/clx;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1}, Lg/clx;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lg/dre;->cj()V

    iget-object p1, p0, Lg/dre;->ao:Lg/gkl;

    iget-object v2, p0, Lg/dre;->bm:Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lg/gkl;->al(Lg/clx;)Lg/gtg;

    move-result-object p1

    iput-object p1, p0, Lg/dre;->ax:Lg/gtg;

    if-eqz p1, :cond_1

    invoke-interface {v2, p1}, Lg/yv;->onSupportActionModeStarted(Lg/gtg;)V

    :cond_1
    iget-object p1, p0, Lg/dre;->ax:Lg/gtg;

    if-nez p1, :cond_11

    iget-object p1, p0, Lg/dre;->al:Lg/elx;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lg/elx;->e()V

    :cond_2
    iget-object p1, p0, Lg/dre;->ax:Lg/gtg;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lg/gtg;->m()V

    :cond_3
    iget-boolean p1, p0, Lg/dre;->af:Z

    const/4 v3, 0x0

    if-nez p1, :cond_4

    :try_start_0
    invoke-interface {v2, v0}, Lg/yv;->onWindowStartingSupportActionMode(Lg/dbn;)Lg/gtg;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_4
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_5

    iput-object p1, p0, Lg/dre;->ax:Lg/gtg;

    goto/16 :goto_5

    :cond_5
    iget-object p1, p0, Lg/dre;->am:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lg/dre;->bf:Z

    iget-object v6, p0, Lg/dre;->aw:Landroid/content/Context;

    if-eqz p1, :cond_7

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f04000b

    invoke-virtual {v7, v8, p1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v8, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v7, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v7, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v7, Lg/gzy;

    invoke-direct {v7, v6, v5}, Lg/gzy;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7}, Lg/gzy;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v6, v7

    :cond_6
    new-instance v7, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v7, v6, v3}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v7, p0, Lg/dre;->am:Landroidx/appcompat/widget/ActionBarContextView;

    new-instance v7, Landroid/widget/PopupWindow;

    const v8, 0x7f04001a

    invoke-direct {v7, v6, v3, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, p0, Lg/dre;->bn:Landroid/widget/PopupWindow;

    invoke-static {v7, v1}, Lg/byh;->ag(Landroid/widget/PopupWindow;I)V

    iget-object v1, p0, Lg/dre;->bn:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lg/dre;->am:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lg/dre;->bn:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v7, 0x7f040005

    invoke-virtual {v1, v7, p1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    iget-object v1, p0, Lg/dre;->am:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object p1, p0, Lg/dre;->bn:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance p1, Lg/gkx;

    invoke-direct {p1, p0, v4}, Lg/gkx;-><init>(Lg/dre;I)V

    iput-object p1, p0, Lg/dre;->bh:Lg/gkx;

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lg/dre;->bq:Landroid/view/ViewGroup;

    const v1, 0x7f090053

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lg/dre;->cj()V

    iget-object v1, p0, Lg/dre;->ao:Lg/gkl;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lg/gkl;->ae()Landroid/content/Context;

    move-result-object v1

    goto :goto_1

    :cond_8
    move-object v1, v3

    :goto_1
    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    move-object v6, v1

    :goto_2
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/ViewStubCompat;->e()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p1, p0, Lg/dre;->am:Landroidx/appcompat/widget/ActionBarContextView;

    :cond_a
    :goto_3
    iget-object p1, p0, Lg/dre;->am:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lg/dre;->al:Lg/elx;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lg/elx;->e()V

    :cond_b
    iget-object p1, p0, Lg/dre;->am:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->aa()V

    new-instance p1, Lg/fsn;

    iget-object v1, p0, Lg/dre;->am:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lg/dre;->am:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p1, Lg/fsn;->c:Landroid/content/Context;

    iput-object v6, p1, Lg/fsn;->d:Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p1, Lg/fsn;->e:Lg/clx;

    new-instance v1, Lg/ftn;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Lg/ftn;-><init>(Landroid/content/Context;)V

    iput v4, v1, Lg/ftn;->g:I

    iput-object v1, p1, Lg/fsn;->a:Lg/ftn;

    iput-object p1, v1, Lg/ftn;->h:Lg/egz;

    iget-object v0, v0, Lg/clx;->e:Ljava/lang/Object;

    check-cast v0, Lg/dbn;

    invoke-interface {v0, p1, v1}, Lg/dbn;->p(Lg/gtg;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lg/fsn;->u()V

    iget-object v0, p0, Lg/dre;->am:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->ac(Lg/gtg;)V

    iput-object p1, p0, Lg/dre;->ax:Lg/gtg;

    iget-boolean p1, p0, Lg/dre;->bg:Z

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_c

    iget-object p1, p0, Lg/dre;->bq:Landroid/view/ViewGroup;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lg/dre;->am:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lg/dre;->am:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Lg/goi;->o(Landroid/view/View;)Lg/elx;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg/elx;->d(F)V

    iput-object p1, p0, Lg/dre;->al:Lg/elx;

    new-instance v0, Lg/gof;

    invoke-direct {v0, v4, p0}, Lg/gof;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lg/elx;->b(Lg/gig;)V

    goto :goto_4

    :cond_c
    iget-object p1, p0, Lg/dre;->am:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lg/dre;->am:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v5}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Lg/dre;->am:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lg/dre;->am:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget-object v0, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lg/dzc;->c(Landroid/view/View;)V

    :cond_d
    :goto_4
    iget-object p1, p0, Lg/dre;->bn:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lg/dre;->bh:Lg/gkx;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_e
    iput-object v3, p0, Lg/dre;->ax:Lg/gtg;

    :cond_f
    :goto_5
    iget-object p1, p0, Lg/dre;->ax:Lg/gtg;

    if-eqz p1, :cond_10

    invoke-interface {v2, p1}, Lg/yv;->onSupportActionModeStarted(Lg/gtg;)V

    :cond_10
    invoke-virtual {p0}, Lg/dre;->cw()V

    iget-object p1, p0, Lg/dre;->ax:Lg/gtg;

    iput-object p1, p0, Lg/dre;->ax:Lg/gtg;

    :cond_11
    invoke-virtual {p0}, Lg/dre;->cw()V

    iget-object p1, p0, Lg/dre;->ax:Lg/gtg;

    return-object p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ActionMode callback can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

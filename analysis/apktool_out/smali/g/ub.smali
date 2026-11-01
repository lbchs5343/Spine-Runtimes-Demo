.class public abstract Lg/ub;
.super Landroidx/fragment/app/u;
.source "SourceFile"

# interfaces
.implements Lg/yv;
.implements Lg/bym;


# static fields
.field private static final DELEGATE_TAG:Ljava/lang/String; = "androidx:appcompat"


# instance fields
.field private mDelegate:Lg/dkn;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/u;-><init>()V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Lg/hbu;

    move-result-object v0

    new-instance v1, Lg/bbn;

    invoke-direct {v1, p0}, Lg/bbn;-><init>(Lg/ub;)V

    const-string v2, "androidx:appcompat"

    invoke-virtual {v0, v2, v1}, Lg/hbu;->j(Ljava/lang/String;Lg/fet;)V

    new-instance v0, Lg/gyh;

    invoke-direct {v0, p0}, Lg/gyh;-><init>(Lg/ub;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Lg/buv;)V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->initializeViewTreeOwners()V

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

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

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 10

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object v0

    check-cast v0, Lg/dre;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/dre;->as:Z

    iget v2, v0, Lg/dre;->bd:I

    const/16 v3, -0x64

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sget v2, Lg/dkn;->h:I

    :goto_0
    invoke-virtual {v0, p1, v2}, Lg/dre;->cx(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1}, Lg/dkn;->k(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lg/dkn;->r(Landroid/content/Context;)V

    :cond_1
    invoke-static {p1}, Lg/dre;->cd(Landroid/content/Context;)Lg/azt;

    move-result-object v2

    instance-of v3, p1, Landroid/view/ContextThemeWrapper;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-static {p1, v0, v2, v5, v4}, Lg/dre;->cc(Landroid/content/Context;ILg/azt;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v3

    :try_start_0
    move-object v6, p1

    check-cast v6, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v6, v3}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    nop

    :cond_2
    instance-of v3, p1, Lg/gzy;

    if-eqz v3, :cond_3

    invoke-static {p1, v0, v2, v5, v4}, Lg/dre;->cc(Landroid/content/Context;ILg/azt;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v3

    :try_start_1
    move-object v4, p1

    check-cast v4, Lg/gzy;

    invoke-virtual {v4, v3}, Lg/gzy;->g(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    :catch_1
    nop

    :cond_3
    sget-boolean v3, Lg/dre;->ab:Z

    if-nez v3, :cond_4

    goto/16 :goto_7

    :cond_4
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    const/4 v4, -0x1

    iput v4, v3, Landroid/content/res/Configuration;->uiMode:I

    const/4 v4, 0x0

    iput v4, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    iput v7, v3, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v7

    if-nez v7, :cond_1c

    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7}, Landroid/content/res/Configuration;-><init>()V

    iput v4, v7, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_2

    :cond_5
    iget v4, v3, Landroid/content/res/Configuration;->fontScale:F

    iget v8, v6, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_6

    iput v8, v7, Landroid/content/res/Configuration;->fontScale:F

    :cond_6
    iget v4, v3, Landroid/content/res/Configuration;->mcc:I

    iget v8, v6, Landroid/content/res/Configuration;->mcc:I

    if-eq v4, v8, :cond_7

    iput v8, v7, Landroid/content/res/Configuration;->mcc:I

    :cond_7
    iget v4, v3, Landroid/content/res/Configuration;->mnc:I

    iget v8, v6, Landroid/content/res/Configuration;->mnc:I

    if-eq v4, v8, :cond_8

    iput v8, v7, Landroid/content/res/Configuration;->mnc:I

    :cond_8
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v4, v8, :cond_9

    invoke-static {v3, v6, v7}, Lg/alx;->b(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    goto :goto_1

    :cond_9
    iget-object v8, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v9, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v8, v9}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v8, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_a
    :goto_1
    iget v8, v3, Landroid/content/res/Configuration;->touchscreen:I

    iget v9, v6, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v8, v9, :cond_b

    iput v9, v7, Landroid/content/res/Configuration;->touchscreen:I

    :cond_b
    iget v8, v3, Landroid/content/res/Configuration;->keyboard:I

    iget v9, v6, Landroid/content/res/Configuration;->keyboard:I

    if-eq v8, v9, :cond_c

    iput v9, v7, Landroid/content/res/Configuration;->keyboard:I

    :cond_c
    iget v8, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v9, v6, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v8, v9, :cond_d

    iput v9, v7, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_d
    iget v8, v3, Landroid/content/res/Configuration;->navigation:I

    iget v9, v6, Landroid/content/res/Configuration;->navigation:I

    if-eq v8, v9, :cond_e

    iput v9, v7, Landroid/content/res/Configuration;->navigation:I

    :cond_e
    iget v8, v3, Landroid/content/res/Configuration;->navigationHidden:I

    iget v9, v6, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v8, v9, :cond_f

    iput v9, v7, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_f
    iget v8, v3, Landroid/content/res/Configuration;->orientation:I

    iget v9, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v8, v9, :cond_10

    iput v9, v7, Landroid/content/res/Configuration;->orientation:I

    :cond_10
    iget v8, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0xf

    iget v9, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v9, v9, 0xf

    if-eq v8, v9, :cond_11

    iget v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v8, v9

    iput v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    :cond_11
    iget v8, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v8, v8, 0xc0

    iget v9, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v9, v9, 0xc0

    if-eq v8, v9, :cond_12

    iget v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v8, v9

    iput v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    :cond_12
    iget v8, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0x30

    iget v9, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v9, v9, 0x30

    if-eq v8, v9, :cond_13

    iget v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v8, v9

    iput v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    :cond_13
    iget v8, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v8, v8, 0x300

    iget v9, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v9, v9, 0x300

    if-eq v8, v9, :cond_14

    iget v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v8, v9

    iput v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    :cond_14
    const/16 v8, 0x1a

    if-lt v4, v8, :cond_16

    invoke-static {v3}, Lg/cch;->k(Landroid/content/res/Configuration;)I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    invoke-static {v6}, Lg/cch;->k(Landroid/content/res/Configuration;)I

    move-result v8

    and-int/lit8 v8, v8, 0x3

    if-eq v4, v8, :cond_15

    invoke-static {v7}, Lg/cch;->k(Landroid/content/res/Configuration;)I

    move-result v4

    invoke-static {v6}, Lg/cch;->k(Landroid/content/res/Configuration;)I

    move-result v8

    and-int/lit8 v8, v8, 0x3

    or-int/2addr v4, v8

    invoke-static {v7, v4}, Lg/cch;->z(Landroid/content/res/Configuration;I)V

    :cond_15
    invoke-static {v3}, Lg/cch;->k(Landroid/content/res/Configuration;)I

    move-result v4

    and-int/lit8 v4, v4, 0xc

    invoke-static {v6}, Lg/cch;->k(Landroid/content/res/Configuration;)I

    move-result v8

    and-int/lit8 v8, v8, 0xc

    if-eq v4, v8, :cond_16

    invoke-static {v7}, Lg/cch;->k(Landroid/content/res/Configuration;)I

    move-result v4

    invoke-static {v6}, Lg/cch;->k(Landroid/content/res/Configuration;)I

    move-result v8

    and-int/lit8 v8, v8, 0xc

    or-int/2addr v4, v8

    invoke-static {v7, v4}, Lg/cch;->z(Landroid/content/res/Configuration;I)V

    :cond_16
    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0xf

    iget v8, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, 0xf

    if-eq v4, v8, :cond_17

    iget v4, v7, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v4, v8

    iput v4, v7, Landroid/content/res/Configuration;->uiMode:I

    :cond_17
    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    iget v8, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, 0x30

    if-eq v4, v8, :cond_18

    iget v4, v7, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v4, v8

    iput v4, v7, Landroid/content/res/Configuration;->uiMode:I

    :cond_18
    iget v4, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v8, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v4, v8, :cond_19

    iput v8, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_19
    iget v4, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v8, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v4, v8, :cond_1a

    iput v8, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_1a
    iget v4, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v8, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v4, v8, :cond_1b

    iput v8, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_1b
    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, v6, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v3, v4, :cond_1d

    iput v4, v7, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_2

    :cond_1c
    move-object v7, v5

    :cond_1d
    :goto_2
    invoke-static {p1, v0, v2, v7, v1}, Lg/dre;->cc(Landroid/content/Context;ILg/azt;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v2, Lg/gzy;

    const v3, 0x7f1302d3

    invoke-direct {v2, p1, v3}, Lg/gzy;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v0}, Lg/gzy;->g(Landroid/content/res/Configuration;)V

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz p1, :cond_21

    invoke-virtual {v2}, Lg/gzy;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_1e

    invoke-static {p1}, Lg/agl;->c(Landroid/content/res/Resources$Theme;)V

    goto :goto_6

    :cond_1e
    const/16 v3, 0x17

    if-lt v0, v3, :cond_21

    sget-object v0, Lg/baf;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v3, Lg/baf;->p:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_1f

    :try_start_4
    const-class v3, Landroid/content/res/Resources$Theme;

    const-string v4, "rebase"

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lg/baf;->o:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_2
    :goto_3
    :try_start_5
    sput-boolean v1, Lg/baf;->p:Z

    :cond_1f
    sget-object v1, Lg/baf;->o:Ljava/lang/reflect/Method;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_20

    :try_start_6
    invoke-virtual {v1, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catch_3
    :try_start_7
    sput-object v5, Lg/baf;->o:Ljava/lang/reflect/Method;

    :cond_20
    :goto_4
    monitor-exit v0

    goto :goto_6

    :goto_5
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1

    :catch_4
    :cond_21
    :goto_6
    move-object p1, v2

    :goto_7
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Lg/ub;->getSupportActionBar()Lg/gkl;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/gkl;->k()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0}, Lg/ub;->getSupportActionBar()Lg/gkl;

    move-result-object v1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lg/gkl;->_af(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lg/emf;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object v0

    check-cast v0, Lg/dre;

    invoke-virtual {v0}, Lg/dre;->ck()V

    iget-object v0, v0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getDelegate()Lg/dkn;
    .locals 2

    iget-object v0, p0, Lg/ub;->mDelegate:Lg/dkn;

    if-nez v0, :cond_0

    sget-object v0, Lg/dkn;->f:Lg/aqv;

    new-instance v0, Lg/dre;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0, p0}, Lg/dre;-><init>(Landroid/content/Context;Landroid/view/Window;Lg/yv;Ljava/lang/Object;)V

    iput-object v0, p0, Lg/ub;->mDelegate:Lg/dkn;

    :cond_0
    iget-object v0, p0, Lg/ub;->mDelegate:Lg/dkn;

    return-object v0
.end method

.method public getDrawerToggleDelegate()Lg/eqj;
    .locals 2

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object v0

    check-cast v0, Lg/dre;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg/dwm;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lg/dwm;-><init>(I)V

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 3

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object v0

    check-cast v0, Lg/dre;

    iget-object v1, v0, Lg/dre;->ah:Lg/cck;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lg/dre;->cj()V

    new-instance v1, Lg/cck;

    iget-object v2, v0, Lg/dre;->ao:Lg/gkl;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lg/gkl;->ae()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lg/dre;->aw:Landroid/content/Context;

    :goto_0
    invoke-direct {v1, v2}, Lg/cck;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lg/dre;->ah:Lg/cck;

    :cond_1
    iget-object v0, v0, Lg/dre;->ah:Lg/cck;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    iget-object v0, p0, Lg/ub;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    sget v1, Lg/awp;->a:I

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSupportActionBar()Lg/gkl;
    .locals 1

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object v0

    check-cast v0, Lg/dre;

    invoke-virtual {v0}, Lg/dre;->cj()V

    iget-object v0, v0, Lg/dre;->ao:Lg/gkl;

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, Lg/ckd;->av(Lg/ub;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object v0

    invoke-virtual {v0}, Lg/dkn;->aa()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object p1

    check-cast p1, Lg/dre;

    iget-boolean v0, p1, Lg/dre;->ay:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lg/dre;->bg:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg/dre;->cj()V

    iget-object v0, p1, Lg/dre;->ao:Lg/gkl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/gkl;->ao()V

    :cond_0
    invoke-static {}, Lg/cfl;->f()Lg/cfl;

    move-result-object v0

    iget-object v1, p1, Lg/dre;->aw:Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lg/cfl;->c:Lg/ezw;

    invoke-virtual {v2, v1}, Lg/ezw;->p(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p1, Lg/dre;->aw:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p1, Lg/dre;->br:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lg/dre;->cs(ZZ)Z

    iget-object p1, p0, Lg/ub;->mResources:Landroid/content/res/Resources;

    if-eqz p1, :cond_1

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lg/ub;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onContentChanged()V
    .locals 0

    invoke-virtual {p0}, Lg/ub;->onSupportContentChanged()V

    return-void
.end method

.method public onCreateSupportNavigateUpTaskStack(Lg/cst;)V
    .locals 4

    iget-object v0, p1, Lg/cst;->a:Ljava/util/ArrayList;

    iget-object p1, p1, Lg/cst;->b:Lg/ub;

    invoke-interface {p0}, Lg/bym;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lg/ckd;->av(Lg/ub;)Landroid/content/Intent;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :try_start_0
    invoke-static {p1, v2}, Lg/ckd;->v(Lg/ub;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {p1, v2}, Lg/ckd;->v(Lg/ub;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :goto_1
    const-string v0, "TaskStackBuilder"

    const-string v1, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/u;->onDestroy()V

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object v0

    invoke-virtual {v0}, Lg/dkn;->x()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLocalesChanged(Lg/azt;)V
    .locals 0

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/u;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lg/ub;->getSupportActionBar()Lg/gkl;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x102002c

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lg/gkl;->ac()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lg/ub;->onSupportNavigateUp()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onNightModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object p1

    check-cast p1, Lg/dre;

    invoke-virtual {p1}, Lg/dre;->ck()V

    return-void
.end method

.method public onPostResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/u;->onPostResume()V

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object v0

    check-cast v0, Lg/dre;

    invoke-virtual {v0}, Lg/dre;->cj()V

    iget-object v0, v0, Lg/dre;->ao:Lg/gkl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lg/gkl;->ab(Z)V

    :cond_0
    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Lg/cst;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/u;->onStart()V

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object v0

    check-cast v0, Lg/dre;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lg/dre;->cs(ZZ)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/u;->onStop()V

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

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

.method public onSupportActionModeFinished(Lg/gtg;)V
    .locals 0

    return-void
.end method

.method public onSupportActionModeStarted(Lg/gtg;)V
    .locals 0

    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 5

    invoke-virtual {p0}, Lg/ub;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lg/ub;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lg/cst;

    invoke-direct {v0, p0}, Lg/cst;-><init>(Lg/ub;)V

    invoke-virtual {p0, v0}, Lg/ub;->onCreateSupportNavigateUpTaskStack(Lg/cst;)V

    invoke-virtual {p0, v0}, Lg/ub;->onPrepareSupportNavigateUpTaskStack(Lg/cst;)V

    iget-object v2, v0, Lg/cst;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-array v3, v1, [Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    aget-object v4, v2, v1

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v4, 0x1000c000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v0, v0, Lg/cst;->b:Lg/ub;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, v0}, Lg/ub;->supportNavigateUpTo(Landroid/content/Intent;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object p2

    invoke-virtual {p2, p1}, Lg/dkn;->u(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWindowStartingSupportActionMode(Lg/dbn;)Lg/gtg;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public openOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Lg/ub;->getSupportActionBar()Lg/gkl;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/gkl;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->initializeViewTreeOwners()V

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/dkn;->y(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->initializeViewTreeOwners()V

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/dkn;->t(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->initializeViewTreeOwners()V

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lg/dkn;->v(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 4

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object v0

    check-cast v0, Lg/dre;

    iget-object v1, v0, Lg/dre;->ar:Ljava/lang/Object;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lg/dre;->cj()V

    iget-object v1, v0, Lg/dre;->ao:Lg/gkl;

    instance-of v2, v1, Lg/hp;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    iput-object v2, v0, Lg/dre;->ah:Lg/cck;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lg/gkl;->i()V

    :cond_1
    iput-object v2, v0, Lg/dre;->ao:Lg/gkl;

    if-eqz p1, :cond_3

    new-instance v1, Lg/bbp;

    iget-object v2, v0, Lg/dre;->ar:Ljava/lang/Object;

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lg/dre;->bw:Ljava/lang/CharSequence;

    :goto_0
    iget-object v3, v0, Lg/dre;->bx:Lg/ecc;

    invoke-direct {v1, p1, v2, v3}, Lg/bbp;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Lg/ecc;)V

    iput-object v1, v0, Lg/dre;->ao:Lg/gkl;

    iget-object v2, v0, Lg/dre;->bx:Lg/ecc;

    iget-object v1, v1, Lg/bbp;->g:Lg/fc;

    iput-object v1, v2, Lg/ecc;->e:Lg/fc;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setBackInvokedCallbackEnabled(Z)V

    goto :goto_1

    :cond_3
    iget-object p1, v0, Lg/dre;->bx:Lg/ecc;

    iput-object v2, p1, Lg/ecc;->e:Lg/fc;

    :goto_1
    invoke-virtual {v0}, Lg/dre;->aa()V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSupportProgress(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object v0

    check-cast v0, Lg/dre;

    iput p1, v0, Lg/dre;->bt:I

    return-void
.end method

.method public startSupportActionMode(Lg/dbn;)Lg/gtg;
    .locals 1

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/dkn;->z(Lg/dbn;)Lg/gtg;

    move-result-object p1

    return-object p1
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object v0

    invoke-virtual {v0}, Lg/dkn;->aa()V

    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/dkn;->s(I)Z

    move-result p1

    return p1
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.class public final Lg/hp;
.super Lg/gkl;
.source "SourceFile"

# interfaces
.implements Lg/frm;


# static fields
.field public static final a:Landroid/view/animation/DecelerateInterpolator;

.field public static final b:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field public _ab:Lg/fps;

.field public _ac:Landroid/content/Context;

.field public _ad:Z

.field public c:Z

.field public d:Lg/clx;

.field public e:Z

.field public f:I

.field public g:Landroidx/appcompat/widget/ActionBarContainer;

.field public h:Z

.field public final l:Lg/dbx;

.field public final m:Lg/dbx;

.field public n:Landroidx/appcompat/widget/ActionBarContextView;

.field public o:Lg/wj;

.field public p:Z

.field public final q:Ljava/util/ArrayList;

.field public r:Lg/btx;

.field public s:Landroid/content/Context;

.field public t:Lg/btx;

.field public u:Z

.field public v:Z

.field public w:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public final x:Lg/emr;

.field public final y:Landroid/view/View;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lg/hp;->b:Landroid/view/animation/AccelerateInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lg/hp;->a:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/hp;->q:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lg/hp;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/hp;->e:Z

    iput-boolean v0, p0, Lg/hp;->z:Z

    new-instance v0, Lg/dbx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/dbx;-><init>(Lg/hp;I)V

    iput-object v0, p0, Lg/hp;->l:Lg/dbx;

    new-instance v0, Lg/dbx;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/dbx;-><init>(Lg/hp;I)V

    iput-object v0, p0, Lg/hp;->m:Lg/dbx;

    new-instance v0, Lg/emr;

    const/16 v1, 0x13

    invoke-direct {v0, v1, p0}, Lg/emr;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/hp;->x:Lg/emr;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/hp;->ag(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(ZLandroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/hp;->q:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lg/hp;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/hp;->e:Z

    iput-boolean v0, p0, Lg/hp;->z:Z

    new-instance v0, Lg/dbx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/dbx;-><init>(Lg/hp;I)V

    iput-object v0, p0, Lg/hp;->l:Lg/dbx;

    new-instance v0, Lg/dbx;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/dbx;-><init>(Lg/hp;I)V

    iput-object v0, p0, Lg/hp;->m:Lg/dbx;

    new-instance v0, Lg/emr;

    const/16 v1, 0x13

    invoke-direct {v0, v1, p0}, Lg/emr;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/hp;->x:Lg/emr;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lg/hp;->ag(Landroid/view/View;)V

    if-nez p1, :cond_0

    const p1, 0x1020002

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg/hp;->y:Landroid/view/View;

    :cond_0
    return-void
.end method


# virtual methods
.method public final aa(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lg/hp;->_ab:Lg/fps;

    check-cast v0, Lg/fxu;

    invoke-virtual {v0, p1}, Lg/fxu;->r(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ab(Z)V
    .locals 0

    iput-boolean p1, p0, Lg/hp;->v:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lg/hp;->o:Lg/wj;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/wj;->g()V

    :cond_0
    return-void
.end method

.method public final ac()I
    .locals 1

    iget-object v0, p0, Lg/hp;->_ab:Lg/fps;

    check-cast v0, Lg/fxu;

    iget v0, v0, Lg/fxu;->l:I

    return v0
.end method

.method public final ad(Z)V
    .locals 1

    iget-boolean v0, p0, Lg/hp;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lg/hp;->ai(Z)V

    :cond_0
    return-void
.end method

.method public final ae()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Lg/hp;->s:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lg/hp;->_ac:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f04000c

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lg/hp;->_ac:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lg/hp;->s:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/hp;->_ac:Landroid/content/Context;

    iput-object v0, p0, Lg/hp;->s:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object v0, p0, Lg/hp;->s:Landroid/content/Context;

    return-object v0
.end method

.method public final af(Z)V
    .locals 11

    iget-boolean v0, p0, Lg/hp;->p:Z

    iget-boolean v1, p0, Lg/hp;->u:Z

    const-wide/16 v2, 0xfa

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, p0, Lg/hp;->x:Lg/emr;

    iget-object v7, p0, Lg/hp;->y:Landroid/view/View;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lg/hp;->z:Z

    if-eqz v0, :cond_19

    iput-boolean v9, p0, Lg/hp;->z:Z

    iget-object v0, p0, Lg/hp;->o:Lg/wj;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/wj;->g()V

    :cond_1
    iget v0, p0, Lg/hp;->f:I

    iget-object v1, p0, Lg/hp;->l:Lg/dbx;

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lg/hp;->v:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_b

    :cond_2
    iget-object v0, p0, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v0, Lg/wj;

    invoke-direct {v0}, Lg/wj;-><init>()V

    iget-object v5, p0, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    if-eqz p1, :cond_3

    filled-new-array {v9, v9}, [I

    move-result-object p1

    iget-object v9, p0, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v9, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v8

    int-to-float p1, p1

    sub-float/2addr v5, p1

    :cond_3
    iget-object p1, p0, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Lg/goi;->o(Landroid/view/View;)Lg/elx;

    move-result-object p1

    invoke-virtual {p1, v5}, Lg/elx;->c(F)V

    iget-object v9, p1, Lg/elx;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    if-eqz v9, :cond_5

    if-eqz v6, :cond_4

    new-instance v4, Lg/gml;

    invoke-direct {v4, v6, v8, v9}, Lg/gml;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_5
    iget-boolean v4, v0, Lg/wj;->b:Z

    iget-object v6, v0, Lg/wj;->c:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-boolean p1, p0, Lg/hp;->e:Z

    if-eqz p1, :cond_7

    if-eqz v7, :cond_7

    invoke-static {v7}, Lg/goi;->o(Landroid/view/View;)Lg/elx;

    move-result-object p1

    invoke-virtual {p1, v5}, Lg/elx;->c(F)V

    iget-boolean v4, v0, Lg/wj;->b:Z

    if-nez v4, :cond_7

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-boolean p1, v0, Lg/wj;->b:Z

    if-nez p1, :cond_8

    sget-object v4, Lg/hp;->b:Landroid/view/animation/AccelerateInterpolator;

    iput-object v4, v0, Lg/wj;->f:Landroid/view/animation/Interpolator;

    :cond_8
    if-nez p1, :cond_9

    iput-wide v2, v0, Lg/wj;->e:J

    :cond_9
    if-nez p1, :cond_a

    iput-object v1, v0, Lg/wj;->a:Lg/gig;

    :cond_a
    iput-object v0, p0, Lg/hp;->o:Lg/wj;

    invoke-virtual {v0}, Lg/wj;->h()V

    return-void

    :cond_b
    invoke-virtual {v1}, Lg/dbx;->bp()V

    return-void

    :cond_c
    :goto_0
    iget-boolean v0, p0, Lg/hp;->z:Z

    if-nez v0, :cond_19

    iput-boolean v8, p0, Lg/hp;->z:Z

    iget-object v0, p0, Lg/hp;->o:Lg/wj;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lg/wj;->g()V

    :cond_d
    iget-object v0, p0, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Lg/hp;->f:I

    iget-object v1, p0, Lg/hp;->m:Lg/dbx;

    const/4 v10, 0x0

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lg/hp;->v:Z

    if-nez v0, :cond_e

    if-eqz p1, :cond_17

    :cond_e
    iget-object v0, p0, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_f

    filled-new-array {v9, v9}, [I

    move-result-object p1

    iget-object v5, p0, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v5, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v8

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_f
    iget-object p1, p0, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    new-instance p1, Lg/wj;

    invoke-direct {p1}, Lg/wj;-><init>()V

    iget-object v5, p0, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v5}, Lg/goi;->o(Landroid/view/View;)Lg/elx;

    move-result-object v5

    invoke-virtual {v5, v10}, Lg/elx;->c(F)V

    iget-object v9, v5, Lg/elx;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    if-eqz v9, :cond_11

    if-eqz v6, :cond_10

    new-instance v4, Lg/gml;

    invoke-direct {v4, v6, v8, v9}, Lg/gml;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_10
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_11
    iget-boolean v4, p1, Lg/wj;->b:Z

    iget-object v6, p1, Lg/wj;->c:Ljava/util/ArrayList;

    if-nez v4, :cond_12

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-boolean v4, p0, Lg/hp;->e:Z

    if-eqz v4, :cond_13

    if-eqz v7, :cond_13

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {v7}, Lg/goi;->o(Landroid/view/View;)Lg/elx;

    move-result-object v0

    invoke-virtual {v0, v10}, Lg/elx;->c(F)V

    iget-boolean v4, p1, Lg/wj;->b:Z

    if-nez v4, :cond_13

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-boolean v0, p1, Lg/wj;->b:Z

    if-nez v0, :cond_14

    sget-object v4, Lg/hp;->a:Landroid/view/animation/DecelerateInterpolator;

    iput-object v4, p1, Lg/wj;->f:Landroid/view/animation/Interpolator;

    :cond_14
    if-nez v0, :cond_15

    iput-wide v2, p1, Lg/wj;->e:J

    :cond_15
    if-nez v0, :cond_16

    iput-object v1, p1, Lg/wj;->a:Lg/gig;

    :cond_16
    iput-object p1, p0, Lg/hp;->o:Lg/wj;

    invoke-virtual {p1}, Lg/wj;->h()V

    goto :goto_1

    :cond_17
    iget-object p1, p0, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean p1, p0, Lg/hp;->e:Z

    if-eqz p1, :cond_18

    if-eqz v7, :cond_18

    invoke-virtual {v7, v10}, Landroid/view/View;->setTranslationY(F)V

    :cond_18
    invoke-virtual {v1}, Lg/dbx;->bp()V

    :goto_1
    iget-object p1, p0, Lg/hp;->w:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_19

    sget-object v0, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lg/dzc;->c(Landroid/view/View;)V

    :cond_19
    return-void
.end method

.method public final ag(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f09011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lg/hp;->w:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lg/frm;)V

    :cond_0
    const v0, 0x7f090045

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lg/fps;

    if-eqz v1, :cond_1

    check-cast v0, Lg/fps;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_8

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Lg/fps;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lg/hp;->_ab:Lg/fps;

    const v0, 0x7f09004d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Lg/hp;->n:Landroidx/appcompat/widget/ActionBarContextView;

    const v0, 0x7f090047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Lg/hp;->_ab:Lg/fps;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lg/hp;->n:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    check-cast v0, Lg/fxu;

    iget-object p1, v0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lg/hp;->_ac:Landroid/content/Context;

    iget-object v0, p0, Lg/hp;->_ab:Lg/fps;

    check-cast v0, Lg/fxu;

    iget v0, v0, Lg/fxu;->l:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lg/hp;->c:Z

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xe

    iget-object v0, p0, Lg/hp;->_ab:Lg/fps;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f050000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lg/hp;->am(Z)V

    iget-object p1, p0, Lg/hp;->_ac:Landroid/content/Context;

    sget-object v0, Lg/acs;->j:[I

    const v3, 0x7f040007

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v0, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lg/hp;->w:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Z

    if-eqz v3, :cond_4

    iput-boolean v1, p0, Lg/hp;->_ad:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_6

    int-to-float v0, v0

    iget-object v1, p0, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    sget-object v2, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-static {v1, v0}, Lg/cd;->k(Landroid/view/View;F)V

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-class v0, Lg/hp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    const-string v0, "null"

    :goto_3
    const-string v1, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ah(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lg/hp;->_ab:Lg/fps;

    check-cast v0, Lg/fxu;

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
    .locals 4

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lg/hp;->_ab:Lg/fps;

    check-cast v1, Lg/fxu;

    iget v2, v1, Lg/fxu;->l:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lg/hp;->c:Z

    and-int/2addr p1, v0

    and-int/lit8 v0, v2, -0x5

    or-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lg/fxu;->q(I)V

    return-void
.end method

.method public final aj(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lg/hp;->r:Lg/btx;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lg/btx;->c:Lg/ftn;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lg/ftn;->setQwertyMode(Z)V

    invoke-virtual {v0, p1, p2, v1}, Lg/ftn;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_2
    :goto_1
    return v1
.end method

.method public final ak()Z
    .locals 2

    iget-object v0, p0, Lg/hp;->_ab:Lg/fps;

    if-eqz v0, :cond_2

    move-object v1, v0

    check-cast v1, Lg/fxu;

    iget-object v1, v1, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->ak:Lg/glz;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lg/glz;->k:Lg/far;

    if-eqz v1, :cond_2

    check-cast v0, Lg/fxu;

    iget-object v0, v0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->ak:Lg/glz;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lg/glz;->k:Lg/far;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/far;->collapseActionView()Z

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final al(Lg/clx;)Lg/gtg;
    .locals 2

    iget-object v0, p0, Lg/hp;->r:Lg/btx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/btx;->m()V

    :cond_0
    iget-object v0, p0, Lg/hp;->w:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v0, p0, Lg/hp;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->aa()V

    new-instance v0, Lg/btx;

    iget-object v1, p0, Lg/hp;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lg/btx;-><init>(Lg/hp;Landroid/content/Context;Lg/clx;)V

    iget-object p1, v0, Lg/btx;->c:Lg/ftn;

    invoke-virtual {p1}, Lg/ftn;->aj()V

    :try_start_0
    iget-object v1, v0, Lg/btx;->d:Lg/clx;

    iget-object v1, v1, Lg/clx;->e:Ljava/lang/Object;

    check-cast v1, Lg/dbn;

    invoke-interface {v1, v0, p1}, Lg/dbn;->p(Lg/gtg;Landroid/view/Menu;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lg/ftn;->ai()V

    if-eqz v1, :cond_1

    iput-object v0, p0, Lg/hp;->r:Lg/btx;

    invoke-virtual {v0}, Lg/btx;->u()V

    iget-object p1, p0, Lg/hp;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->ac(Lg/gtg;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lg/hp;->ap(Z)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lg/ftn;->ai()V

    throw v0
.end method

.method public final am(Z)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lg/hp;->_ab:Lg/fps;

    check-cast p1, Lg/fxu;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Lg/ho;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Lg/ho;)V

    iget-object p1, p0, Lg/hp;->_ab:Lg/fps;

    check-cast p1, Lg/fxu;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget-object p1, p0, Lg/hp;->_ab:Lg/fps;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lg/hp;->_ab:Lg/fps;

    check-cast p1, Lg/fxu;

    iget-object p1, p1, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    iget-object p1, p0, Lg/hp;->w:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public final an(Z)V
    .locals 1

    iget-boolean v0, p0, Lg/hp;->h:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lg/hp;->h:Z

    iget-object p1, p0, Lg/hp;->q:Ljava/util/ArrayList;

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
    .locals 2

    iget-object v0, p0, Lg/hp;->_ac:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lg/hp;->am(Z)V

    return-void
.end method

.method public final ap(Z)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lg/hp;->u:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lg/hp;->u:Z

    iget-object v2, p0, Lg/hp;->w:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    invoke-virtual {p0, v0}, Lg/hp;->af(Z)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lg/hp;->u:Z

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lg/hp;->u:Z

    iget-object v1, p0, Lg/hp;->w:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_2
    invoke-virtual {p0, v0}, Lg/hp;->af(Z)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    if-eqz v1, :cond_7

    const-wide/16 v4, 0xc8

    const-wide/16 v6, 0x64

    if-eqz p1, :cond_4

    iget-object p1, p0, Lg/hp;->_ab:Lg/fps;

    check-cast p1, Lg/fxu;

    iget-object v1, p1, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v1}, Lg/goi;->o(Landroid/view/View;)Lg/elx;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lg/elx;->d(F)V

    invoke-virtual {v1, v6, v7}, Lg/elx;->f(J)V

    new-instance v2, Lg/ezf;

    invoke-direct {v2, p1, v3}, Lg/ezf;-><init>(Lg/fxu;I)V

    invoke-virtual {v1, v2}, Lg/elx;->b(Lg/gig;)V

    iget-object p1, p0, Lg/hp;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->ab(IJ)Lg/elx;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lg/hp;->_ab:Lg/fps;

    check-cast p1, Lg/fxu;

    iget-object v1, p1, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v1}, Lg/goi;->o(Landroid/view/View;)Lg/elx;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lg/elx;->d(F)V

    invoke-virtual {v1, v4, v5}, Lg/elx;->f(J)V

    new-instance v3, Lg/ezf;

    invoke-direct {v3, p1, v0}, Lg/ezf;-><init>(Lg/fxu;I)V

    invoke-virtual {v1, v3}, Lg/elx;->b(Lg/gig;)V

    iget-object p1, p0, Lg/hp;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->ab(IJ)Lg/elx;

    move-result-object p1

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    :goto_1
    new-instance v0, Lg/wj;

    invoke-direct {v0}, Lg/wj;-><init>()V

    iget-object v2, v0, Lg/wj;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lg/elx;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v3

    goto :goto_2

    :cond_5
    const-wide/16 v3, 0x0

    :goto_2
    iget-object v1, p1, Lg/elx;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_6
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lg/wj;->h()V

    return-void

    :cond_7
    if-eqz p1, :cond_8

    iget-object p1, p0, Lg/hp;->_ab:Lg/fps;

    check-cast p1, Lg/fxu;

    iget-object p1, p1, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lg/hp;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void

    :cond_8
    iget-object p1, p0, Lg/hp;->_ab:Lg/fps;

    check-cast p1, Lg/fxu;

    iget-object p1, p1, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lg/hp;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
